��    m      �  �   �      @	  ~  A	  �  �  �   �     \  	   e  �   o  �   *    �  	   �  	         
          #     6     J     ]     p     ~     �     �     �     �     �     �               -     A     U     i  (   }     �  
   �  	   �     �     �     �     �  
   �     �               6     L     d  !   �     �  !   �  !   �               +     C     ^     r     �     �     �  	   �  	   �  
   �     �     �     �     �  %        4     G  '   L  1   t  "   �  ,   �     �     �            
   !     ,     2     7     P     ]     q     �     �     �     �     �     �     �     �     �  	   �     	               '     4     =     ]     d     r     �     �  j  �  �     n  �  t  +  �  �  �  �  !  ."  �   P%     �%     �%  �   &  �   �&    �'     �(  	   �(     �(     �(     �(     )  "   $)     G)     _)     s)  $   �)     �)     �)     �)     �)     *     ,*     F*     `*     z*     �*     �*  0   �*  *   �*     $+  	   4+  	   >+     H+     `+     e+     j+     |+  "   �+     �+     �+     �+  /   ,  (   4,  "   ],  (   �,  (   �,     �,     �,     �,     -     %-     8-     E-     J-     X-     k-  
   |-  
   �-     �-     �-  
   �-     �-  '   �-     .     .  5   $.  B   Z.  #   �.  0   �.     �.     �.     /     %/  	   3/     =/     E/     J/     e/  !   t/     �/     �/     �/  /   �/     	0     0     .0     50     =0  
   Y0  	   d0     n0     t0     �0     �0  
   �0  '   �0     �0     �0     �0     �0     1  v   1  �   �2  z  l3  �  �4                   >              :   ?   4       E   U      ^   *   L                  0   I   A           )   R   W         Q       N       3       [   .   %      /   &   S   2   
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
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. Project-Id-Version: git trunk
Report-Msgid-Bugs-To: https://gitlab.freedesktop.org/pipewire/pipewire/issues/new
POT-Creation-Date: 2021-04-18 16:31+0300
PO-Revision-Date: 2021-04-18 16:38+0300
Last-Translator: Ricky Tigg <ricky.tigg@gmail.com>
Language-Team: Finnish <https://translate.fedoraproject.org/projects/pipewire/pipewire/fi/>
Language: fi
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 4.5.1
       --rate                            Näytetaajuus (pakoll. nauhoit.) (oletus %u)
      --channels                        Kanavien määrä (pakoll. nauhoit.) (oletus %u)
      --channel-map                     Kanavakartta
                                            vaihtoehdot: "stereo", "surround-51",... tai
                                            pilkulla erotetut kanavien nimet: esim. "FL,FR"
      --format                          Näytemuoto %s (pakoll. nauhoit.) (oletus %s)
      --volume                          Vuon äänenvoimakkuus 0-1.0 (oletus %.3f)
  -q  --quality                         Resamplerin laatu (0 - 15) (oletus %d)

   -R, --remote                          Vastapään taustaprosessin nimi
      --media-type                      Aseta mediatyyppi (oletus %s)
      --media-category                  Aseta medialuokka (oletus %s)
      --media-role                      Aseta mediarooli (oletus %s)
      --target                          Aseta kohdesolmu (oletus %s)
                                          0 tarkoittaa: ei linkkiä
      --latency                         Aseta solmun viive (oletus %s)
                                          Xyksikkö (yksikkö = s, ms, us, ns)
                                          tai näytteiden lukumäärä (256)
                                          näytetaajuus on lähteen mukaan
      --list-targets                    Näytä --target:n mahdolliset kohteet

   -p, --playback                        Toisto
  -r, --record                          Nauhoitus
  -m, --midi                            MIDI-tila

 %s, sisääntulo %s, ulostulo %s [valinnat]
  -h, --help                            Näytä tämä ohje
      --version                         Näytä versio
  -c, --config                          Lataa asetukset (oletus %s)
 %s [valinnat] <tiedosto>
  -h, --help                            Näytä tämä ohje
      --version                         Näytä versio
  -v, --verbose                         Näytä lisää tietoja

 %s [valinnat] [komento]
  -h, --help                            Näytä tämä ohje
      --version                         Näytä versio
  -d, --daemon                          Käynnistä taustaprosessina (oletus: ei)
  -r, --remote                          Taustaprosessin nimi

 (virheellinen) Vahvistin Analoginen sisääntulo Analoginen mono Analoginen mono (vasen) Analoginen mono (oikea) Analoginen mono, molempisuuntainen Analoginen monoulostulo Analoginen ulostulo Analoginen stereo Analoginen stereo, molempisuuntainen Analoginen tilaääni 2.1 Analoginen tilaääni 3.0 Analoginen tilaääni 3.1 Analoginen tilaääni 4.0 Analoginen tilaääni 4.1 Analoginen tilaääni 5.0 Analoginen tilaääni 5.1 Analoginen tilaääni 6.0 Analoginen tilaääni 6.1 Analoginen tilaääni 7.0 Analoginen tilaääni 7.1 Ääniyhdyskäytävä (A2DP-lähde & HSP/HFP AG) Automaattinen äänenvoimakkuuden säätö Bassonvahvistus Bluetooth Vahvistus Sisäinen äänentoisto Auto Puhe Puhe-sisääntulo Puhe-ulostulo Digitaalinen sisääntulo (S/PDIF) Digitaalinen ulostulo (S/PDIF) Digitaalinen stereo (HDMI) Digitaalinen stereo (IEC958) Digitaalinen stereo, molempisuuntainen (IEC958) Digitaalinen tilaääni 4.0 (IEC958/AC3) Digitaalinen tilaääni 5.1 (HDMI) Digitaalinen tilaääni 5.1 (IEC958/AC3) Digitaalinen tilaääni 5.1 (IEC958/DTS) Telakan mikrofoni Telakan sisääntulo Telakan linjasisääntulo Telakan mikrofoni Ulkoinen mikrofoni Etumikrofoni Peli Peli-ulostulo HDMI / DisplayPort Kuulokemikrofoni Kuulokkeet Kuulokkeet Kuulokkeet 2 Kuulokkeiden monoulostulo Kuulokkeet Kuulokemikrofoni (HSP/HFP) Kuulokemikrofoni (HSP/HFP, %s-koodekki) Kuulokkeiden mikrofoni Hi-Fi Korkealaatuinen molempisuuntainen (A2DP-lähde/kohde) Korkealaatuinen molempisuuntainen (A2DP-lähde/kohde, %s-koodekki) Korkealaatuinen toisto (A2DP-kohde) Korkealaatuinen toisto (A2DP-kohde, %s-koodekki) Sisääntulo Sisäinen mikrofoni Linjasisääntulo Linjaulostulo Mikrofoni Modeemi Mono Mono-puhe + 7.1 tilaääni Monikanavainen Monikanavainen, molempisuuntainen Monikanavainen sisääntulo Monikanavainen ulostulo Ei vahvistinta Ei automaattista äänenvoimakkuuden säätöä Ei basson vahvistusta Ei vahvistusta Poissa Puhelin PipeWire-mediajärjestelmä Kannettava Pro-audio Radio Takamikrofoni Kaiutin Kaiutinpuhelin Kaiuttimet Käynnistä PipeWire-mediajärjestelmä Stereo Stereo, molempisuuntainen Tuntematon laite Video Virtuaalinen tilaääni 7.1 snd_pcm_avail() palautti poikkeuksellisen suuren arvon: %lu tavu (%lu ms).
Tämä on todennäköisesti ohjelmavirhe ALSA-ajurissa ”%s”. Ilmoita tästä ongelmasta ALSA-kehittäjille. snd_pcm_avail() palautti poikkeuksellisen suuren arvon: %lu tavua (%lu ms).
Tämä on todennäköisesti ohjelmavirhe ALSA-ajurissa ”%s”. Ilmoita tästä ongelmasta ALSA-kehittäjille. snd_pcm_avail_delay() palautti poikkeuksellisia arvoja: %lu on vähemmän kuin saatavissa oleva %lu.
Tämä on todennäköisesti ohjelmavirhe ALSA-ajurissa ”%s”. Ilmoita tästä ongelmasta ALSA-kehittäjille. snd_pcm_delay() palautti poikkeuksellisen suuren arvon: %li tavu (%s%lu ms).
Tämä on todennäköisesti ohjelmavirhe ALSA-ajurissa ”%s”. Ilmoita tästä ongelmasta ALSA-kehittäjille. snd_pcm_delay() palautti poikkeuksellisen suuren arvon: %li tavua (%s%lu ms).
Tämä on todennäköisesti ohjelmavirhe ALSA-ajurissa ”%s”. Ilmoita tästä ongelmasta ALSA-kehittäjille. snd_pcm_mmap_begin() palautti poikkeuksellisen suuren arvon: %lu tavu (%lu ms).
Tämä on todennäköisesti ohjelmavirhe ALSA-ajurissa ”%s”. Ilmoita tästä ongelmasta ALSA-kehittäjille. snd_pcm_mmap_begin() palautti poikkeuksellisen suuren arvon: %lu tavua (%lu ms).
Tämä on todennäköisesti ohjelmavirhe ALSA-ajurissa ”%s”. Ilmoita tästä ongelmasta ALSA-kehittäjille. 