��    o      �  �         `	  ~  a	  �  �  �   �     �  	   �  �   �  �   {    ?     G     P  	   \  	   f     p     }     �     �     �     �     �     �     �               /     C     W     k          �     �     �     �  (   �       
   #  	   .     8     >     M     Q  
   V     a     m     �     �     �     �  !   �       !   '  !   I     k     {     �     �     �     �     �     �     �  	     	     
   !     ,     9     P     X  %   t     �     �  '   �  1   �  "     ,   /     \     b     v     ~  
   �     �     �     �     �     �     �     �     �          %     3     <     @     F  	   O     Y     _     o     w     �     �     �     �     �     �     �     �  j  �  �   X  n    t  |  �  �  �  �  U  �"  �   �%  
   �&  
   �&  �   �&  �   �'    �(     �)     �)  	   �)     �)     �)     �)     �)     *     /*     D*     Z*     m*     }*     �*     �*     �*     �*     �*     +     +     .+     D+     Z+     p+  3   �+  '   �+     �+  	   �+  	   �+     ,     ,  	   ,     ),     ;,     M,     h,     �,     �,     �,  !   �,     �,  !   -  !   0-     R-     d-  $   �-     �-     �-     �-     �-     �-     �-     .     .     .  	   #.     -.     B.  $   P.  .   u.     �.     �.  5   �.  ?   �.  .   0/  8   _/     �/     �/     �/     �/     �/     �/     �/     �/  
   0     0     !0     40     G0  .   [0     �0     �0     �0     �0     �0  	   �0     �0     �0     �0     �0  	   �0      1     1     1     -1     C1     Y1     _1  R  t1  �   �3  X  �4  a  �6            j      @              <   A   6   k   G   Z   T   _   ,   N                  2   K   C           +   W   Y         S       P       5       ]   0   '      1   (   U   4         =   >   l   e   h         \   "   g   %   D   `       J   :          O   7                          	           V       *                      d   X   &   I             8                                    ?   !   )       a         [   .   F   #            B   M   i   E   -       ;   H   
   m   $       c   Q       b   n      L   /             ^       o   9   3      f       R          --rate                            Sample rate (req. for rec) (default %u)
      --channels                        Number of channels (req. for rec) (default %u)
      --channel-map                     Channel map
                                            one of: "stereo", "surround-51",... or
                                            comma separated list of channel names: eg. "FL,FR"
      --format                          Sample format %s (req. for rec) (default %s)
      --volume                          Stream volume 0-1.0 (default %.3f)
  -q  --quality                         Resampler quality (0 - 15) (default %d)

   -R, --remote                          Remote daemon name
      --media-type                      Set media type (default %s)
      --media-category                  Set media category (default %s)
      --media-role                      Set media role (default %s)
      --target                          Set node target (default %s)
                                          0 means don't link
      --latency                         Set node latency (default %s)
                                          Xunit (unit = s, ms, us, ns)
                                          or direct samples (256)
                                          the rate is the one of the source file
      --list-targets                    List available targets for --target

   -p, --playback                        Playback mode
  -r, --record                          Recording mode
  -m, --midi                            Midi mode
  -d, --dsd                             DSD mode

 %s Input %s Output %s [options]
  -h, --help                            Show this help
      --version                         Show version
  -c, --config                          Load config (Default %s)
 %s [options] <file>
  -h, --help                            Show this help
      --version                         Show version
  -v, --verbose                         Enable verbose operations

 %s [options] [command]
  -h, --help                            Show this help
      --version                         Show version
  -d, --daemon                          Start as daemon (Default false)
  -r, --remote                          Remote daemon name

 %s on %s %s on %s@%s (invalid) Amplifier Analog Input Analog Mono Analog Mono (Left) Analog Mono (Right) Analog Mono Duplex Analog Mono Output Analog Output Analog Stereo Analog Stereo Duplex Analog Surround 2.1 Analog Surround 3.0 Analog Surround 3.1 Analog Surround 4.0 Analog Surround 4.1 Analog Surround 5.0 Analog Surround 5.1 Analog Surround 6.0 Analog Surround 6.1 Analog Surround 7.0 Analog Surround 7.1 Audio Gateway (A2DP Source & HSP/HFP AG) Automatic Gain Control Bass Boost Bluetooth Boost Built-in Audio Car Chat Chat Input Chat Output Digital Input (S/PDIF) Digital Output (S/PDIF) Digital Stereo (HDMI) Digital Stereo (IEC958) Digital Stereo Duplex (IEC958) Digital Surround 4.0 (IEC958/AC3) Digital Surround 5.1 (HDMI) Digital Surround 5.1 (IEC958/AC3) Digital Surround 5.1 (IEC958/DTS) Dock Microphone Docking Station Input Docking Station Line In Docking Station Microphone External Microphone Front Microphone Game Game Output HDMI / DisplayPort Handsfree Headphone Headphones Headphones 2 Headphones Mono Output Headset Headset Head Unit (HSP/HFP) Headset Head Unit (HSP/HFP, codec %s) Headset Microphone HiFi High Fidelity Duplex (A2DP Source/Sink) High Fidelity Duplex (A2DP Source/Sink, codec %s) High Fidelity Playback (A2DP Sink) High Fidelity Playback (A2DP Sink, codec %s) Input Internal Microphone Line In Line Out Microphone Modem Mono Mono Chat + 7.1 Surround Multichannel Multichannel Duplex Multichannel Input Multichannel Output No Amplifier No Automatic Gain Control No Bass Boost No Boost Off Phone Portable Pro Audio Radio Rear Microphone Speaker Speakerphone Speakers Stereo Stereo Duplex Tunnel for %s@%s Tunnel to %s/%s Unknown device Video Virtual Surround 7.1 snd_pcm_avail() returned a value that is exceptionally large: %lu byte (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_avail() returned a value that is exceptionally large: %lu bytes (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_avail_delay() returned strange values: delay %lu is less than avail %lu.
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_delay() returned a value that is exceptionally large: %li byte (%s%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_delay() returned a value that is exceptionally large: %li bytes (%s%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_mmap_begin() returned a value that is exceptionally large: %lu byte (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_mmap_begin() returned a value that is exceptionally large: %lu bytes (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. Project-Id-Version: pipewire
Report-Msgid-Bugs-To: https://gitlab.freedesktop.org/pipewire/pipewire/issues/new
POT-Creation-Date: 2021-11-17 15:06+0100
PO-Revision-Date: 2022-02-05 12:06+0000
Last-Translator: Sergiu Bivol <sergiu@cip.md>
Language-Team: Romanian
Language: ro
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n==1 ? 0 : (n==0 || (n%100 > 0 && n%100 < 20)) ? 1 : 2;
X-Generator: Lokalize 21.12.2
       --rate                            Rată de eșantionare (nec. pt. înregistrare) (implicit %u)
      --channels                        Număr de canale (nec. pt. înregistrare) (implicit %u)
      --channel-map                     Hartă canale
                                            una dintre: "stereo", "surround-51",... sau listă
                                            separată prin virgulă cu denumiri de canale: de ex. "FL,FR"
      --format                          Format de eșantionare %s (nec. pt. înregistrare) (implicit %s)
      --volume                          Volum flux 0-1.0 (implicit %.3f)
  -q  --quality                         Calitate de re-eșantionare (0 - 15) (implicit %d)

   -R, --remote                          Denumirea demonului distant
      --media-type                      Stabilește tipul mediului (implicit %s)
      --media-category                  Stabilește categoria mediului (implicit %s)
      --media-role                      Stabilește rolul mediului (implicit %s)
      --target                          Stabilește ținta nodului (implicit %s)
                                          0 înseamnă „nu lega”
      --latency                         Stabilește latența nodului (implicit %s)
                                          Xunit (unitate = s, ms, us, ns)
                                          sau mostre directe (256)
                                          rata este cea a fișierului sursă
      --list-targets                    Enumeră țintele disponibile pentru --target

   -p, --playback                        Regim de redare
  -r, --record                          Regim de înregistrare
  -m, --midi                            Regim MIDI
  -d, --dsd                             regim DSD

 Intrare %s Ieșire %s %s [opțiuni]
  -h, --help                            Arată acest ajutor
      --version                         Arată versiunea
  -c, --config                          Încarcă configurare (implicit %s)
 %s [opțiuni] <fișier>
  -h, --help                            Arată acest ajutor
      --version                         Arată versiunea
  -v, --verbose                         Activează operații verboase

 %s [opțiuni] [comandă]
  -h, --help                            Arată acest ajutor
      --version                         Arată versiunea
  -d, --daemon                          Pornește ca demon (implicit fals)
  -r, --remote                          Denumire demon distant

 %s pe %s %s pe %s@%s (nevalid) Amplificator Intrare analogică mono analogic mono analogic (stânga) mono analogic (dreapta) Duplex mono analogic Ieșire mono analogic Ieșire analogică stereo analogic Duplex stereo analogic surround analogic 2.1 surround analogic 3.0 surround analogic 3.1 surround analogic 4.0 surround analogic 4.1 surround analogic 5.0 surround analogic 5.1 surround analogic 6.0 surround analogic 6.1 surround analogic 7.0 surround analogic 7.1 Poartă de acces audio (sursă A2DP și HSP/HFP AG) Control automat al nivelului de intrare Stimulare bas Bluetooth Stimulare Audio încorporat Mașină Discuție Intrare discuție Ieșire discuție Intrare digitală (S/PDIF) Ieșire digitală (S/PDIF) stereo digital (HDMI) stereo digital (IEC958) Duplex stereo digital (IEC958) surround digital 4.0 (IEC958/AC3) surround digital 5.1 (HDMI) surround digital 5.1 (IEC958/AC3) surround digital 5.1 (IEC958/DTS) Microfon andocare Intrare stație de andocare Linie de intrare stație de andocare Microfon stație de andocare Microfon extern Microfon frontal joc Ieșire joc HDMI / DisplayPort Mâini libere Cască Căști Căști 2 Ieșire mono căști Set cu cască Bază pentru set cu cască (HSP/HFP) Bază pentru set cu cască (HSP/HFP, codec %s) Microfon căști HiFi Duplex de fidelitate înaltă (sursă/chiuvetă A2DP) Duplex de fidelitate înaltă (sursă/chiuvetă A2DP, codec %s) Redare de fidelitate înaltă (chiuvetă A2DP) Redare de fidelitate înaltă (chiuvetă A2DP, codec %s) Intrare Microfon intern Linie de intrare Linie de ieșire Microfon Modem Mono Discuție mono + Surround 7.1 multicanal Duplex multicanal Intrare multicanal Ieșire multicanal Fără amplificator Fără control automat al nivelului de intrare Fără stimulare bas Fără stimulare Oprit Telefon Portabil Pro Audio Radio Microfon spate Difuzor Difuzor Difuzoare Stereo Duplex stereo Tunelează pentru %s@%s Tunelează spre %s/%s Dispozitiv necunoscut Video surround virtual 7.1 snd_pcm_avail() a întors o valoare excepțional de mare: %lu octet (%lu ms).
Cel mai probabil, acesta e un defect în driver-ul ALSA „%s”. Raportați această problemă dezvoltatorilor ALSA. snd_pcm_avail() a întors o valoare excepțional de mare: %lu octeți (%lu ms).
Cel mai probabil, acesta e un defect în driver-ul ALSA „%s”. Raportați această problemă dezvoltatorilor ALSA. snd_pcm_avail() a întors o valoare excepțional de mare: %lu de octeți (%lu ms).
Cel mai probabil, acesta e un defect în driver-ul ALSA „%s”. Raportați această problemă dezvoltatorilor ALSA. snd_pcm_avail_delay() a întors valori stranii: întârzierea %lu e mai mică decât disponibilul %lu.
Cel mai probabil, acesta e un defect în driver-ul ALSA „%s”. Raportați această problemă dezvoltatorilor ALSA. snd_pcm_delay() a întors o valoare excepțional de mare: %li octet (%s%lu ms).
Cel mai probabil, acesta e un defect în driver-ul ALSA „%s”. Raportați această problemă dezvoltatorilor ALSA. snd_pcm_delay() a întors o valoare excepțional de mare: %li octeți (%s%lu ms).
Cel mai probabil, acesta e un defect în driver-ul ALSA „%s”. Raportați această problemă dezvoltatorilor ALSA. snd_pcm_delay() a întors o valoare excepțional de mare: %li de octeți (%s%lu ms).
Cel mai probabil, acesta e un defect în driver-ul ALSA „%s”. Raportați această problemă dezvoltatorilor ALSA. snd_pcm_mmap_begin() a întors o valoare excepțional de mare: %lu octet (%lu ms).
Cel mai probabil, acesta e un defect în driver-ul ALSA „%s”. Raportați această problemă dezvoltatorilor ALSA. snd_pcm_mmap_begin() a întors o valoare excepțional de mare: %lu octeți (%lu ms).
Cel mai probabil, acesta e un defect în driver-ul ALSA „%s”. Raportați această problemă dezvoltatorilor ALSA. snd_pcm_mmap_begin() a întors o valoare excepțional de mare: %lu de octeți (%lu ms).
Cel mai probabil, acesta e un defect în driver-ul ALSA „%s”. Raportați această problemă dezvoltatorilor ALSA. 