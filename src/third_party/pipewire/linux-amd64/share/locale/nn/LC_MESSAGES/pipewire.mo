��    l      |  �   �      0	  ~  1	  �  �  �   �     L  	   U  �   _    #  	   +  	   5     ?     L     X     k          �     �     �     �     �     �     �          &     :     N     b     v     �     �  (   �     �  
   �  	   �                       
   %     0     <     S     k     �     �  !   �     �  !   �  !        :     J     `     x     �     �     �     �     �  	   �  	   �  
   �     �               '  %   C     i     |  '   �  1   �  "   �  ,   �     +     1     E     M  
   V     a     g     l     �     �     �     �     �     �     �                         +  	   4     >     D     T     \     i     r     �     �     �     �     �  j  �  �   <  n  �  t  `     �  �  �    y!  �   �$  	   #%     -%  �   6%    �%  	   '  
   '     '     ''     3'     I'     ^'     r'     �'     �'     �'     �'     �'     �'     �'     (     (     -(     A(     U(     i(     }(  .   �(      �(     �(  	   �(     �(     
)     )     )     $)     4)     C)     [)     r)     �)     �)  !   �)     �)  !   �)  !   *     A*     ]*     y*     �*     �*     �*     �*     �*     �*     �*     �*     +     +     &+  	   =+     G+     Z+     w+     �+  5   �+  ?   �+  1   
,  ;   <,     x,     �,  	   �,     �,     �,     �,     �,     �,     �,     �,     �,     	-     -  %   ,-     R-     g-     {-     ~-     �-     �-     �-     �-     �-  	   �-     �-     �-     �-     .     .     .     ).     /.  U  F.  �   �/  Y  R0  _  �1                   =              9   >   3       D   T      ]   )   K                  /   H               (   Q   V         P       M       2       Z   -   $      .   %   R   1   	      :   ;   i   d   h         Y          "   A   ^       G              L   4                                    S       '                   @   b   U   #   F   
       g   5                     `               <      &   c   _         X   +   C                ?   J   f   B   *       8   E   7   [   !       a   N       W   k      I   ,   j         \       l   6   0      e       O          --rate                            Sample rate (req. for rec) (default %u)
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

 %s Input %s Output %s [options] <file>
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
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. Project-Id-Version: 
Report-Msgid-Bugs-To: https://gitlab.freedesktop.org/pipewire/pipewire/issues/new
POT-Creation-Date: 2021-04-20 16:34+0200
PO-Revision-Date: 2021-02-07 15:40+0000
Last-Translator: Karl Ove Hufthammer <karl@huftis.org>
Language-Team: Norwegian Nynorsk <https://translate.fedoraproject.org/projects/pipewire/pipewire/nn/>
Language: nn
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 4.4.2
       --rate                            Målehastigheit (krevjast for opptak) (default %u)
      --channels                        Antall kanalar (krevjast for opptak) (default %u)
      --channel-map                     Kanaloppsett
                                            ein av: "stereo", "surround-51",... or
                                            kommaskild liste av kanalnavn : t.d. "FL,FR"
      --format                          Format for målingar %s (krevjast for opptak) (default %s)
      --volume                          Lydnivå for straum 0-1.0 (standard %.3f)
  -q  --quality                         Kvaltet for gjenutvalg (0 - 15) (standard %d)

   -R, --remote                          Navn på fjerntjenar
      --media-type                      Set medietype (standard %s)
      --media-category                  Set mediekategori (standard %s)
      --media-role                      Set medierolle (standard %s)
      --target                          Set nodemål (standard %s)
                                          0 betyr ikke tilknytt
      --latency                         Set nodelatens (standard %s)
                                          Xunit (unit = s, ms, us, ns)
                                          eller direkte i datapunkter (256)
                                          hastigheiten kjem frå kildefilen file
      --list-targets                    Vis tilgjengeleg mål for --target

   -p, --playback                        Avspillingsmodus
  -r, --record                          Opptaksmodus
  -m, --midi                            Midi-modus

 %s innlyd %s utlyd %s [val] <fil>
  -h, --help                            Vis denne hjelpen
      --version                         Vis versjon
  -v, --verbose                         Slå på utdypene handling

 %s [val] [kommando]
  -h, --help                            Vis denne hjelp
      --version                         Vis versjon
  -d, --daemon                          Start som tjenar (standard er false)
  -r, --remote                          Navn på fjerntjenar

 (ugyldig) Forsterkar Analog innlyd Analog mono Analog mono (venstre) Analog mono (høgre) Analog mono dupleks Analog mono-utlyd Analog utlyd Analog stereo Analog stereo dupleks Analog kringlyd 2.1 Analog kringlyd 3.0 Analog kringlyd 3.1 Analog kringlyd 4.0 Analog kringlyd 4.1 Analog kringlyd 5.0 Analog kringlyd 5.1 Analog kringlyd 6.0 Analog kringlyd 6.1 Analog kringlyd 7.0 Analog kringlyd 7.1 Inngangsport for lyd (A2DP-kilde & HSP/HFP AG) Automatisk lydnivåstyring (AGC) Bassforsterking Bluetooth Lydforsterking Innebygd lyd Bil Nettprat Nettprat innlyd Nettprat utlyd Digital innlyd (S/PDIF) Digital utlyd (S/PDIF) Digital stereo (HDMI) Digital stereo (IEC958) Digital stereo duplex (IEC958) Digital kringlyd 4.0 (IEC958/AC3) Digital kringlyd 5.1 (HDMI) Digital kringlyd 5.1 (IEC958/AC3) Digital kringlyd 5.1 (IEC958/DTS) Mikrofon på dokkingstasjon Lyd inn frå dokkingstasjon Linje inn på dokkingstasjon Mikrofon på dokkingstasjon Ekstern mikrofon Frontmikrofon Spel Spellyd HDMI/DisplayPort Handfri Hovudtelefonar Hovudtelefonar Hovudtelefonar 2 Hovudtelefonar monolyd Hovudsett Hodesett (HSP/HFP) Hodesett (HSP/HFP, codec %s) Mikrofon på hovudsett Hi-fi Toveis lyd med naturtru attgjeving (A2DP Source/Sink) Toveis lyd med naturtru attgjeving (A2DP Source/Sink, codec %s) Avspilling med naturtru lydattgjeving (A2DP Sink) Avspilling med naturtru lydattgjeving (A2DP Sink, codec %s) Lyd inn Intern mikrofonen Linje inn Linje ut Mikrofon Modem Mono Mono-nettprat + 7.1-kringlyd Multikanals Multikanals dupleks Multikanals innlyd Multikanals utlyd Ingen forsterkar Inga automatisk lydnivåstyring (AGC) Inga bassforsterking Inga lydforsterking Av Telefon PipeWire mediasystem Portabel Profflyd Radio Bakmikrofon Høgtalar Høgtalartelefon Høgtalarar Start opp PipeWire mediasystem Stereo Stereo dupleks Ukjend einhet Video Virtuell kringlyd 7.1 snd_pcm_avail() gav ein verdi som er uvanleg stor: %lu byte (%lu ms).
Dette kjem truleg av ein feil i ALSA-drivaren «%s». Meld frå om problemet til ALSA-utviklarane. snd_pcm_avail() gav ein verdi som er uvanleg stor: %lu byte (%lu ms).
Dette kjem truleg av ein feil i ALSA-drivaren «%s». Meld frå om problemet til ALSA-utviklarane. snd_pcm_avail_delay() gav ein merkeleg verdi: delay %lu er mindre enn avail %lu.
Dette kjem truleg av ein feil i ALSA-drivaren «%s». Meld frå om problemet til ALSA-utviklarane. snd_pcm_delay() gav ein verdi som er uvanleg stor: %li byte (%s%lu ms).
Dette kjem truleg av ein feil i ALSA-drivaren «%s». Meld frå om problemet til ALSA-utviklarane. snd_pcm_delay() gav ein verdi som er uvanleg stor: %li byte (%s%lu ms).
Dette kjem truleg av ein feil i ALSA-drivaren «%s». Meld frå om problemet til ALSA-utviklarane. snd_pcm_mmap_begin() gav ein verdi som er uvanleg stor: %lu byte (%lu ms).
Dette kjem truleg av ein feil i ALSA-drivaren «%s». Meld frå om problemet til ALSA-utviklarane. snd_pcm_mmap_begin() gav ein verdi som er uvanleg stor: %lu byte (%lu ms).
Dette kjem truleg av ein feil i ALSA-drivaren «%s». Meld frå om problemet til ALSA-utviklarane. 