��    m      �  �   �      @	  ~  A	  �  �  �   �     \  	   e  �   o  �   *    �  	   �  	         
          #     6     J     ]     p     ~     �     �     �     �     �     �               -     A     U     i  (   }     �  
   �  	   �     �     �     �     �  
   �     �               6     L     d  !   �     �  !   �  !   �               +     C     ^     r     �     �     �  	   �  	   �  
   �     �     �     �     �  %        4     G  '   L  1   t  "   �  ,   �     �     �            
   !     ,     2     7     P     ]     q     �     �     �     �     �     �     �     �     �  	   �     	               '     4     =     ]     d     r     �     �  j  �  �     n  �  t  +  �  �  �  /  1  �!  �   %     �%  	   �%  �   �%  �   �&    Y'  	   g(     q(     }(     �(     �(     �(     �(     �(     �(     �(     )     )     -)     A)     U)     i)     })     �)     �)     �)     �)     �)  %   �)     *  	   6*  	   @*     J*     P*     ^*     b*  	   g*  
   q*     |*     �*     �*     �*     �*  !   �*     +  !   7+  !   Y+     {+     �+     �+     �+     �+     �+     �+  	   �+     ,     ,     ,     *,     9,     J,     h,      p,  *   �,     �,     �,  (   �,  2   �,  $   2-  .   W-     �-     �-     �-     �-     �-     �-     �-     �-  
   �-     �-     �-     .     .      ,.     M.     ].     i.     m.     u.     �.  	   �.     �.     �.  
   �.     �.     �.     �.     �.     �.     /     /     !/  n  6/  �   �0  r  r1  x  �2                   >              :   ?   4       E   U      ^   *   L                  0   I   A           )   R   W         Q       N       3       [   .   %      /   &   S   2   
      ;   <   j   e   i         Z           #   B   _       H              M   5                         	           T       (                      c   V   $   G          h   6                     a               =      '   d   `         Y   ,   D   !            @   K   g   C   +       9   F   8   \   "       b   O       X   l      J   -   k         ]       m   7   1      f       P          --rate                            Sample rate (req. for rec) (default %u)
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

 (invalid) Amplifier Analog Input Analog Mono Analog Mono (Left) Analog Mono (Right) Analog Mono Duplex Analog Mono Output Analog Output Analog Stereo Analog Stereo Duplex Analog Surround 2.1 Analog Surround 3.0 Analog Surround 3.1 Analog Surround 4.0 Analog Surround 4.1 Analog Surround 5.0 Analog Surround 5.1 Analog Surround 6.0 Analog Surround 6.1 Analog Surround 7.0 Analog Surround 7.1 Audio Gateway (A2DP Source & HSP/HFP AG) Automatic Gain Control Bass Boost Bluetooth Boost Built-in Audio Car Chat Chat Input Chat Output Digital Input (S/PDIF) Digital Output (S/PDIF) Digital Stereo (HDMI) Digital Stereo (IEC958) Digital Stereo Duplex (IEC958) Digital Surround 4.0 (IEC958/AC3) Digital Surround 5.1 (HDMI) Digital Surround 5.1 (IEC958/AC3) Digital Surround 5.1 (IEC958/DTS) Dock Microphone Docking Station Input Docking Station Line In Docking Station Microphone External Microphone Front Microphone Game Game Output HDMI / DisplayPort Handsfree Headphone Headphones Headphones 2 Headphones Mono Output Headset Headset Head Unit (HSP/HFP) Headset Head Unit (HSP/HFP, codec %s) Headset Microphone HiFi High Fidelity Duplex (A2DP Source/Sink) High Fidelity Duplex (A2DP Source/Sink, codec %s) High Fidelity Playback (A2DP Sink) High Fidelity Playback (A2DP Sink, codec %s) Input Internal Microphone Line In Line Out Microphone Modem Mono Mono Chat + 7.1 Surround Multichannel Multichannel Duplex Multichannel Input Multichannel Output No Amplifier No Automatic Gain Control No Bass Boost No Boost Off Phone PipeWire Media System Portable Pro Audio Radio Rear Microphone Speaker Speakerphone Speakers Start the PipeWire Media System Stereo Stereo Duplex Unknown device Video Virtual Surround 7.1 snd_pcm_avail() returned a value that is exceptionally large: %lu byte (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_avail() returned a value that is exceptionally large: %lu bytes (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_avail_delay() returned strange values: delay %lu is less than avail %lu.
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_delay() returned a value that is exceptionally large: %li byte (%s%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_delay() returned a value that is exceptionally large: %li bytes (%s%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_mmap_begin() returned a value that is exceptionally large: %lu byte (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_mmap_begin() returned a value that is exceptionally large: %lu bytes (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. Project-Id-Version: PipeWire master
Report-Msgid-Bugs-To: https://gitlab.freedesktop.org/pipewire/pipewire/issues/new
POT-Creation-Date: 2021-04-18 16:54+0800
PO-Revision-Date: 2021-04-19 20:26+0200
Last-Translator: scootergrisen
Language-Team: Danish
Language: da
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
       --rate                            Målefrekvens (kræves ved optagelse) (standard %u)
      --channels                        Antal kanaler (kræves ved optagelse) (standard %u)
      --channel-map                     Kanalkort
                                            en af: "stereo", "surround-51", ... eller
                                            kommasepareret liste over kanalnavne: f.eks. "FL,FR"
      --format                          Måleformat %s (kræves ved optagelse) (standard %s)
      --volume                          Lydstyrke for stream 0-1.0 (standard %.3f)
  -q  --quality                         Kvalitet for resampler (0-15) (standard %d)

   -R, --remote                          Navn for fjerndæmon
      --media-type                      Indstil medietype (standard %s)
      --media-category                  Indstil mediekategori (standard %s)
      --media-role                      Indstil medierolle (default %s)
      --target                          Indstil mål for knudepunkt (standard %s)
                                          0 betyder ingen henvisning
      --latency                         Indstil latens for knudepunkt (standard %s)
                                          Xenhed (enhed = s, ms, us, ns)
                                          eller direkte datapunkter (256)
                                          hastigheden stammer fra kildefilen
      --list-targets                    Vis tilgængelige mål for --target

   -p, --playback                        Afspilningstilstand
  -r, --record                          Optagelsestilstand
  -m, --midi                            Midi-tilstand

 %s-input %s-output %s [tilvalg]
  -h, --help                            Vis denne hjælp
      --version                         Vis version
  -c, --config                          Indlæs konfiguration (standard %s)
 %s [tilvalg] <fil>
  -h, --help                            Vis denne hjælp
      --version                         Vis version
  -v, --verbose                         Aktivér uddybende handlinger

 %s [tilvalg] [kommando]
  -h, --help                            Vis denne hjælp
      --version                         Vis version
  -d, --daemon                          Start som dæmon (standard false)
  -r, --remote                          Navn for fjerndæmon

 (ugyldig) Forstærker Analog input Analog mono Analog mono (venstre) Analog mono (højre) Analog mono dupleks Analog monooutput Analog output Analog stereo Analog stereo dupleks Analog surround 2.1 Analog surround 3.0 Analog surround 3.1 Analog surround 4.0 Analog surround 4.1 Analog surround 5.0 Analog surround 5.1 Analog surround 6.0 Analog surround 6.1 Analog surround 7.0 Analog surround 7.1 Lydgateway (A2DP-kilde og HSP/HFP AG) Automatisk styring af gain Bas boost Bluetooth Boost Indbygget lyd Bil Chat Chatinput Chatoutput Digital input (S/PDIF) Digital output (S/PDIF) Digital stereo (HDMI) Digital stereo (IEC958) Digital stereo dupleks (IEC958) Digital surround 4.0 (IEC958/AC3) Digital surround 5.1 (HDMI) Digital surround 5.1 (IEC958/AC3) Digital surround 5.1 (IEC958/DTS) Dokmikrofon Input for dokingstation Line in for dokingstation Mikrofon for dokingstation Ekstern mikrofon Mikrofon foran Spil Spilouput HDMI/DisplayPort Håndfri Hovedtelefon Hovedtelefoner Hovedtelefoner 2 Monooutput for hovedtelefoner Headset Hovedenhed for headset (HSP/HFP) Hovedenhed for headset (HSP/HFP, codec %s) Mikrofon for headset HiFi High fidelity dupleks (A2DP-kilde/-sink) High fidelity dupleks (A2DP-kilde/-sink, codec %s) High fidelity afspilning (A2DP-sink) High fidelity afspilning (A2DP-sink, codec %s) Input Intern mikrofon Line in Line out Mikrofon Modem Mono Monochat + 7.1 surround Multikanal Multikanal dupleks Multikanal input Multikanal output Ingen forstærker Ingen automatisk styring af gain Ingen bas boost Ingen boost Fra Telefon PipeWire-mediesystem Bærbar Pro Audio Radio Mikrofon bagved Højttaler Højttalertelefon Højttalere Start PipeWire-mediesystemet Stereo Stereo dupleks Ukendt enhed Video Virtuel surround 7.1 snd_pcm_avail() returnerede en værdi som er usædvanlig stor: %lu byte (%lu ms).
Det er højst sandsynligt en fejl i ALSA-driveren '%s'. Rapportér det venligst til ALSA-udviklerne. snd_pcm_avail() returnerede en værdi som er usædvanlig stor: %lu bytes (%lu ms).
Det er højst sandsynligt en fejl i ALSA-driveren '%s'. Rapportér det venligst til ALSA-udviklerne. snd_pcm_avail_delay() returnerede underlige værdier: forsinkelsen %lu er mindre end tilgængelige %lu.
Det er højst sandsynligt en fejl i ALSA-driveren '%s'. Rapportér det venligst til ALSA-udviklerne. snd_pcm_delay() returnerede en værdi som er usædvanlig stor: %li byte (%s%lu ms).
Det er højst sandsynligt en fejl i ALSA-driveren '%s'. Rapportér det venligst til ALSA-udviklerne. snd_pcm_delay() returnerede en værdi som er usædvanlig stor: %li bytes (%s%lu ms).
Det er højst sandsynligt en fejl i ALSA-driveren '%s'. Rapportér det venligst til ALSA-udviklerne. snd_pcm_mmap_begin() returnerede en værdi som er usædvanlig stor: %lu byte (%lu ms).
Det er højst sandsynligt en fejl i ALSA-driveren '%s'. Rapportér det venligst til ALSA-udviklerne. snd_pcm_mmap_begin() returnerede en værdi som er usædvanlig stor: %lu bytes (%lu ms).
Det er højst sandsynligt en fejl i ALSA-driveren '%s'. Rapportér det venligst til ALSA-udviklerne. 