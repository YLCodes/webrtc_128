��    q      �  �   ,      �	  ~  �	  �    �        �  	   �  �   �  �   r    6     >     G  	   S  	   ]     g     t     �     �     �     �     �     �     �     �          &     :     N     b     v     �     �     �     �  (   �       
     	   %     /     5     D     H  
   M     X     d     {     �     �     �  !   �       !     !   @     b     r     �     �     �     �     �     �     �  	     	     
        #     0     G     O  %   k     �     �  '   �  1   �  "     ,   &     S     Y     m     u  
   ~     �     �     �     �     �     �     �     �               *     3     7     =     S  	   \     f     l     |     �     �     �     �     �     �     �     �     �       j    �   �  n  :  t  �  �    l  �    R"  �   U%  
   �%     &  �   &  �   �&    �'  
   �(     �(     �(     �(     �(     �(     �(     )     !)     4)     I)     Y)     g)     |)     �)     �)     �)     �)     �)     �)     *     *     0*     D*  (   X*      �*  
   �*  	   �*     �*     �*     �*     �*     �*     �*     �*     +     ,+     B+     Z+  !   y+     �+  !   �+  !   �+     �+     ,      ,     8,     Q,     d,  	   s,     },     �,  	   �,  	   �,  	   �,     �,     �,     �,     �,  %   	-     /-     @-  '   E-  1   m-  "   �-  ,   �-     �-     �-     	.     .     .     #.     ).     ..  
   G.     R.     e.     x.     �.  &   �.     �.     �.     �.     �.     �.     /  	   
/     /     /     ,/     4/     A/     I/     g/     n/     }/     �/     �/     �/     �/  k  �/  �   =1  o  	2  u  y3     >       [         N   k       #       c   G             `   j       f   .              \              :       )   d   T          _   o   -   5   W   R   O       ,   S                l             2   =       p   Y   /       H       C         m       F   a   '                      $   e   I   ^   7       
      X   h   ?   *   6       +   g   ;   4   V   (   q       !      ]       9   %   i   Q   0   A       "             <       E   8           Z   M             D   J      1   3   U   L   B                    b       	   @                 K              &   n   P          --rate                            Sample rate (req. for rec) (default %u)
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

 %s on %s %s on %s@%s (invalid) Amplifier Analog Input Analog Mono Analog Mono (Left) Analog Mono (Right) Analog Mono Duplex Analog Mono Output Analog Output Analog Stereo Analog Stereo Duplex Analog Surround 2.1 Analog Surround 3.0 Analog Surround 3.1 Analog Surround 4.0 Analog Surround 4.1 Analog Surround 5.0 Analog Surround 5.1 Analog Surround 6.0 Analog Surround 6.1 Analog Surround 7.0 Analog Surround 7.1 Audio Gateway (A2DP Source & HSP/HFP AG) Automatic Gain Control Bass Boost Bluetooth Boost Built-in Audio Car Chat Chat Input Chat Output Digital Input (S/PDIF) Digital Output (S/PDIF) Digital Stereo (HDMI) Digital Stereo (IEC958) Digital Stereo Duplex (IEC958) Digital Surround 4.0 (IEC958/AC3) Digital Surround 5.1 (HDMI) Digital Surround 5.1 (IEC958/AC3) Digital Surround 5.1 (IEC958/DTS) Dock Microphone Docking Station Input Docking Station Line In Docking Station Microphone External Microphone Front Microphone Game Game Output HDMI / DisplayPort Handsfree Headphone Headphones Headphones 2 Headphones Mono Output Headset Headset Head Unit (HSP/HFP) Headset Head Unit (HSP/HFP, codec %s) Headset Microphone HiFi High Fidelity Duplex (A2DP Source/Sink) High Fidelity Duplex (A2DP Source/Sink, codec %s) High Fidelity Playback (A2DP Sink) High Fidelity Playback (A2DP Sink, codec %s) Input Internal Microphone Line In Line Out Microphone Modem Mono Mono Chat + 7.1 Surround Multichannel Multichannel Duplex Multichannel Input Multichannel Output No Amplifier No Automatic Gain Control No Bass Boost No Boost Off Phone PipeWire Media System Portable Pro Audio Radio Rear Microphone Speaker Speakerphone Speakers Start the PipeWire Media System Stereo Stereo Duplex Tunnel for %s@%s Tunnel to %s/%s Unknown device Video Virtual Surround 7.1 snd_pcm_avail() returned a value that is exceptionally large: %lu byte (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_avail() returned a value that is exceptionally large: %lu bytes (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_avail_delay() returned strange values: delay %lu is less than avail %lu.
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_delay() returned a value that is exceptionally large: %li byte (%s%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_delay() returned a value that is exceptionally large: %li bytes (%s%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_mmap_begin() returned a value that is exceptionally large: %lu byte (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_mmap_begin() returned a value that is exceptionally large: %lu bytes (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. Project-Id-Version: PipeWire master
Report-Msgid-Bugs-To: https://gitlab.freedesktop.org/pipewire/pipewire/-/issues
POT-Creation-Date: 2021-05-16 13:13+0000
PO-Revision-Date: 2021-08-11 10:50+0700
Last-Translator: Andika Triwidada <andika@gmail.com>
Language-Team: Indonesia <id@li.org>
Language: id
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n>1;
X-Generator: Poedit 2.2.1
       --rate                            Laju cuplik (req. for rec) (baku %u)
      --channels                        Cacah kanal (req. for rec) (baku %u)
      --channel-map                     Peta kanal
                                            satu dari: "stereo", "surround-51",... or
                                            daftar dipisah koma dari nama kanal: mis. "FL,FR"
      --format                          Format cuplikan %s (req. for rec) (baku %s)
      --volume                          Volume stream 0-1.0 (baku %.3f)
  -q  --quality                         Kualitas resampler (0 - 15) (baku %d)

   -R, --remote                          Nama daemon remote
      --media-type                      Atur tipe media (baku %s)
      --media-category                  Atur kategori media (baku %s)
      --media-role                      Atur peran media (baku %s)
      --target                          Atur target simpul (baku %s)
                                          0 berarti jangan tautkan
      --latency                         Atur latensi simpul (baku %s)
                                          Xunit (unit = s, ms, us, ns)
                                          or cuplikan langsung (256)
                                          laju adalah satu dari berkas sumber
      --list-targets                    Daftar target yang tersedia untuk --target

   -p, --playback                        Mode main ulang
  -r, --record                          Mode perekaman
  -m, --midi                            Mode midi

 Masukan %s Keluaran %s %s [opsi]
  -h, --help                            Tampilkan bantuan ini
      --version                         Tampilkan versi
  -c, --config                          Muat konfig (Baku %s)
 %s [opsi] <berkas>
  -h, --help                            Menampilkan bantuan ini
      --version                         Menampilkan versi
  -v, --verbose                         Memfungsikan pesan rinci

 %s [opsi] [perintah]
  -h, --help                            Tampilkan bantuan ini
      --version                         Tampilkan versi
  -d, --daemon                          Mulai sebagai daemon (Baku = false)
  -r, --remote                          Nama daemon remote

 %s pada %s %s pada %s@%s (tak valid) Penguat Masukan Analog Analog Mono Analog Mono (Kiri) Analog Mono (Kanan) Analog Mono Duplex Keluaran Mono Analog Keluaran Analog Analog Stereo Analog Stereo Duplex Analog Surround 2.1 Analog Surround 3.0 Analog Surround 3.1 Analog Surround 4.0 Analog Surround 4.1 Analog Surround 5.0 Analog Surround 5.1 Analog Surround 6.0 Analog Surround 6.1 Analog Surround 7.0 Analog Surround 7.1 Audio Gateway (A2DP Source & HSP/HFP AG) Kendali Penguatan Otomatis (AGC) Boost Bass Bluetooth Boost Audio Bawaan Mobil Obrolan Masukan Obrolan Keluaran Obrolan Masukan Digital (S/PDIF) Keluaran Digital (S/PDIF) Digital Stereo (HDMI) Digital Stereo (IEC958) Digital Stereo Duplex (IEC958) Digital Surround 4.0 (IEC958/AC3) Surround 5.1 Digital (HDMI) Digital Surround 5.1 (IEC958/AC3) Surround 5.1 Digital (IEC958/DTS) Mikrofon Dok Masukan Docking Station Docking Station Line In Mikrofon Docking Station Mikrofon Eksternal Mikrofon Depan Permainan Keluaran Permainan HDMI / DisplayPort Handsfree Headphone Headphone Headphone 2 Keluaran Mono Headphone Headset Headset Head Unit (HSP/HFP) Headset Head Unit (HSP/HFP, codec %s) Mikrofon Headset HiFi High Fidelity Duplex (A2DP Source/Sink) High Fidelity Duplex (A2DP Source/Sink, codec %s) High Fidelity Playback (A2DP Sink) High Fidelity Playback (A2DP Sink, codec %s) Masukan Mikrofon Internal Line In Line Out Mikrofon Modem Mono Mono Chat + 7.1 Surround Multikanal Dupleks Multikanal Masukan Multikanal Keluaran Multikanal Tanpa Penguat Tanpa Kendali Penguatan Otomatis (AGC) Tanpa Boost Bass Tanpa Boost Mati Telepon Sistem Media PipeWire Portabel Pro Audio Radio Mikrofon Belakang Speaker Speakerphone Speaker Memulai Sistem Media PipeWire Stereo Dupleks Stereo Tunnel untuk %s@%s Tunnel ke %s/%s Perangkat tak dikenal Video Virtual Surround 7.1 snd_pcm_avail() mengembalikan nilai yang luar biasa besar: %lu byte (%lu ms).
Sangat mungkin ini adalah kutu pada driver ALSA '%s'. Silakan laporkan hal ini ke para pengembang ALSA. snd_pcm_avail() mengembalikan nilai yang luar biasa besar: %lu byte (%lu ms).
Sangat mungkin ini adalah kutu pada driver ALSA '%s'. Silakan laporkan hal ini ke para pengembang ALSA. snd_pcm_avail_delay() mengembalikan nilai yang aneh: tundaan %lu kurang dari yang tersedia %lu.
Paling mungkin ini adalah kutu dalam penggerak ALSA '%s'. Harap laporkan kasus ini ke para pengembang ALSA. snd_pcm_delay() mengembalikan nilai yang luar biasa besar: %li byte (%s%lu ms).
Sangat mungkin ini adalah kutu pada driver ALSA '%s'. Silakan laporkan hal ini ke para pengembang ALSA. snd_pcm_delay() mengembalikan nilai yang luar biasa besar: %li byte (%s%lu ms).
Sangat mungkin ini adalah kutu pada driver ALSA '%s'. Silakan laporkan hal ini ke para pengembang ALSA. snd_pcm_mmap_begin() mengembalikan nilai yang luar biasa besar: %lu byte (%lu ms).
Sangat mungkin ini adalah kutu pada driver ALSA '%s'. Silakan laporkan hal ini ke para pengembang ALSA. snd_pcm_mmap_begin() mengembalikan nilai yang luar biasa besar: %lu byte (%lu ms).
Sangat mungkin ini adalah kutu pada driver ALSA '%s'. Silakan laporkan hal ini ke para pengembang ALSA. 