# Copyright 2013 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
"""Unittests for reraiser_thread.py."""

import threading
import unittest

from devil import devil_env
from devil.utils import reraiser_thread
from devil.utils import watchdog_timer

with devil_env.SysPath(devil_env.PYMOCK_PATH):
  import mock  # pylint: disable=import-error


class TestException(Exception):
  pass


class TestReraiserThread(unittest.TestCase):
  """Tests for reraiser_thread.ReraiserThread."""

  def testNominal(self):
    result = [None, None]

    def f(a, b=None):
      result[0] = a
      result[1] = b

    thread = reraiser_thread.ReraiserThread(f, [1], {'b': 2})
    thread.start()
    thread.join()
    self.assertEqual(result[0], 1)
    self.assertEqual(result[1], 2)

  @mock.patch('logging.critical')
  def testRaise(self, logging_critical):
    def f():
      raise TestException

    thread = reraiser_thread.ReraiserThread(f)
    thread.start()
    thread.join()
    self.assertFalse(logging_critical.called)
    with self.assertRaises(TestException):
      thread.ReraiseIfException()

    self.assertTrue(logging_critical.called)


class TestReraiserThreadGroup(unittest.TestCase):
  """Tests for reraiser_thread.ReraiserThreadGroup."""

  def testInit(self):
    ran = [False] * 5

    def f(i):
      ran[i] = True

    group = reraiser_thread.ReraiserThreadGroup(
        [reraiser_thread.ReraiserThread(f, args=[i]) for i in range(5)])
    group.StartAll()
    group.JoinAll()
    for v in ran:
      self.assertTrue(v)

  def testAdd(self):
    ran = [False] * 5

    def f(i):
      ran[i] = True

    group = reraiser_thread.ReraiserThreadGroup()
    for i in range(5):
      group.Add(reraiser_thread.ReraiserThread(f, args=[i]))
    group.StartAll()
    group.JoinAll()
    for v in ran:
      self.assertTrue(v)

  def testJoinRaise(self):
    def f():
      raise TestException

    group = reraiser_thread.ReraiserThreadGroup(
        [reraiser_thread.ReraiserThread(f) for _ in range(5)])
    group.StartAll()
    with self.assertRaises(TestException):
      group.JoinAll()

  def testJoinTimeout(self):
    def f():
      pass

    event = threading.Event()

    def g():
      event.wait()

    group = reraiser_thread.ReraiserThreadGroup(
        [reraiser_thread.ReraiserThread(g),
         reraiser_thread.ReraiserThread(f)])
    group.StartAll()
    with self.assertRaises(reraiser_thread.TimeoutError):
      group.JoinAll(watchdog_timer.WatchdogTimer(0.01))
    event.set()


class TestRunAsync(unittest.TestCase):
  """Tests for reraiser_thread.RunAsync."""

  def testNoArgs(self):
    results = reraiser_thread.RunAsync([])
    self.assertEqual([], results)

  def testOneArg(self):
    results = reraiser_thread.RunAsync([lambda: 1])
    self.assertEqual([1], results)

  def testTwoArgs(self):
    a, b = reraiser_thread.RunAsync((lambda: 1, lambda: 2))
    self.assertEqual(1, a)
    self.assertEqual(2, b)


if __name__ == '__main__':
  unittest.main()
