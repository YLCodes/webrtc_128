��    m      �  �   �      @	  ~  A	  �  �  �   �     \  	   e  �   o  �   *    �  	   �  	         
          #     6     J     ]     p     ~     �     �     �     �     �     �               -     A     U     i  (   }     �  
   �  	   �     �     �     �     �  
   �     �               6     L     d  !   �     �  !   �  !   �               +     C     ^     r     �     �     �  	   �  	   �  
   �     �     �     �     �  %        4     G  '   L  1   t  "   �  ,   �     �     �            
   !     ,     2     7     P     ]     q     �     �     �     �     �     �     �     �     �  	   �     	               '     4     =     ]     d     r     �     �  j  �  �     n  �  t  +  �  �  �  �  T  S"  �   �%     I&  
   R&  �   ]&  �   0'  $   (     %)  
   1)     <)     M)     ])     u)     �)     �)     �)     �)     �)     *     *     1*     I*     a*     y*     �*     �*     �*     �*     �*  *   	+  !   4+     V+  	   j+     t+     �+     �+     �+     �+     �+     �+     �+     	,     #,  %   ?,  %   e,     �,  %   �,  %   �,     �,     
-      "-     C-     ^-     p-     �-     �-     �-  	   �-  
   �-  
   �-     �-     �-     �-  &   .  0   /.     `.     }.  '   �.  1   �.  "   �.  ,   �.     ,/     2/     D/     S/     d/     m/     s/     x/     �/     �/     �/     �/     �/  '   �/     0     50     G0     O0      W0     x0  	   �0     �0     �0     �0     �0     �0  (   �0     1     1     1     31     91  �  R1  �   �3  �  �4  �  z7                   >              :   ?   4       E   U      ^   *   L                  0   I   A           )   R   W         Q       N       3       [   .   %      /   &   S   2   
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
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. Project-Id-Version: pipewire.master-tx
Report-Msgid-Bugs-To: https://gitlab.freedesktop.org/pipewire/pipewire/issues/new
POT-Creation-Date: 2021-04-18 16:54+0800
PO-Revision-Date: 2021-10-12 14:18+0200
Last-Translator: Daniel Rusek <mail@asciiwolf.com>
Language-Team: čeština <gnome-cs-list@gnome.org>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
X-Generator: Poedit 3.0
       --rate                            Vzorkovací frekvence (vyžad. pro rec) (výchozí je %u)
      --channels                        Počet kanálů (vyžad. pro rec) (výchozí je %u)
      --channel-map                     Mapa kanálů
                                            jedno z: "stereo", "surround-51",... nebo
                                            čárkami oddělený seznam názvů kanálů: např. "FL,FR"
      --format                          Formát vzorku %s (vyžad. pro rec) (výchozí je %s)
      --volume                          Hlasitost streamu 0-1.0 (výchozí je %.3f)
  -q  --quality                         Kvalita resampleru (0 - 15) (výchozí je %d)

   -R, --remote                          Název vzdáleného démonu
      --media-type                      Nastavit typ médií (výchozí je %s)
      --media-category                  Nastavit kategorii médií (výchozí je %s)
      --media-role                      Nastavit roli médií (výchozí je %s)
      --target                          Nastavit cíl uzlu (výchozí je %s)
                                          0 znamená nepropojovat
      --latency                         Nastavit latenci uzlu (výchozí je %s)
                                          Xjednotka (jednotka = s, ms, us, ns)
                                          nebo přímé vzorky (256)
                                          frekvence je stejná jako u zdrojového souboru
      --list-targets                    Zobrazit dostupné cíle pro --target

   -p, --playback                        Playback mód
  -r, --record                          Recording mód
  -m, --midi                            Midi mód

 Vstup %s Výstup %s %s [volby]
  -h, --help                            Zobrazit tuto nápovědu
      --version                         Zobrazit verzi
  -c, --config                          Načíst konfiguraci (výchozí je %s)
 %s [volby] <soubor>
  -h, --help                            Zobrazit tuto nápovědu
      --version                         Zobrazit verzi
  -v, --verbose                         Povolit podrobné operace

 %s [volby] [příkaz]
  -h, --help                            Zobrazit tuto nápovědu
      --version                         Zobrazit verzi
  -d, --daemon                          Spustit jako démon (výchozí je false)
  -r, --remote                          Název vzdáleného démonu

 (neplatné) Zesilovač Analogový vstup Analogové mono Analogové mono (levé) Analogové mono (pravé) Analogové duplexní mono Analogový výstup mono Analogový výstup Analogové stereo Analogové duplexní stereo Analogový Surround 2.1 Analogový Surround 3.0 Analogový Surround 3.1 Analogový Surround 4.0 Analogový Surround 4.1 Analogový Surround 5.0 Analogový Surround 5.1 Analogový Surround 6.0 Analogový Surround 6.1 Analogový Surround 7.0 Analogový Surround 7.1 Zvuková brána (A2DP Source & HSP/HFP AG) Automatické řízení zesílení Zdůraznění basů Bluetooth Zdůraznění Vnitřní zvukový systém Auto Chat Komunikační vstup Komunikační výstup Digitální vstup (S/PDIF) Digitální výstup (S/PDIF) Digitální stereo (HDMI) Digitální stereo (IEC958) Digitální duplexní stereo (IEC958) Digitální Surround 4.0 (IEC958/AC3) Digitální Surround 5.1 (HDMI) Digitální Surround 5.1 (IEC958/AC3) Digitální Surround 5.1 (IEC958/DTS) Dokovací mikrofon Vstup dokovací stanice Linkový vstup dokovací stanice Mikrofon dokovací stanice Externí mikrofon Přední mikrofon Hra Herní výstup HDMI / DisplayPort Handsfree Sluchátko Sluchátka Sluchátka 2 Sluchátkový výstup mono Náhlavní souprava Jednotka náhlavní soupravy (HSP/HFP) Jednotka náhlavní soupravy (HSP/HFP, kodek %s) Mikrofon náhlavní soupravy HiFi High Fidelity Duplex (A2DP Source/Sink) High Fidelity Duplex (A2DP Source/Sink, kodek %s) High Fidelity Playback (A2DP Sink) High Fidelity Playback (A2DP Sink, kodek %s) Vstup Interní mikrofon Linkový vstup Linkový výstup Mikrofon Modem Mono Mono Chat + 7.1 Surround Více kanálů Vícekanálový duplex Vícekanálový vstup Vícekanálový výstup Bez zesilovače Bez automatického řízení zesílení Bez zdůraznění basů Bez zdůraznění Vypnuto Telefon Multimediální systém PipeWire Přenosné zařízení Pro Audio Rádio Zadní mikrofon Reproduktor Hlasitý odposlech Reproduktory Spustit multimediální systém PipeWire Stereo Duplexní stereo Neznámé zařízení Obraz Virtuální surround 7.1 Volání snd_pcm_avail() vrátilo hodnotu, která je nezvykle vysoká: %lu bajtů (%lu ms).
S největší pravděpodobností se jedná o chybu v ovladači ALSA „%s“. Nahlaste prosím tento problém vývojářům ALSA. Volání snd_pcm_avail() vrátilo hodnotu, která je nezvykle vysoká: %lu bajtů (%lu ms).
S největší pravděpodobností se jedná o chybu v ovladači ALSA „%s“. Nahlaste prosím tento problém vývojářům ALSA. Volání snd_pcm_avail() vrátilo hodnotu, která je nezvykle vysoká: %lu bajtů (%lu ms).
S největší pravděpodobností se jedná o chybu v ovladači ALSA „%s“. Nahlaste prosím tento problém vývojářům ALSA. Volání snd_pcm_delay() vrátilo hodnotu, která je podivná: zpoždění %lu je menší než možné %lu.
S největší pravděpodobností se jedná o chybu v ovladači ALSA „%s“. Nahlaste prosím tento problém vývojářům ALSA. Volání snd_pcm_delay() vrátilo hodnotu, která je nezvykle vysoká: %li bajtů (%s%lu ms).
S největší pravděpodobností se jedná o chybu v ovladači ALSA „%s“. Nahlaste prosím tento problém vývojářům ALSA. Volání snd_pcm_delay() vrátilo hodnotu, která je nezvykle vysoká: %li bajtů (%s%lu ms).
S největší pravděpodobností se jedná o chybu v ovladači ALSA „%s“. Nahlaste prosím tento problém vývojářům ALSA. Volání snd_pcm_delay() vrátilo hodnotu, která je nezvykle vysoká: %li bajtů (%s%lu ms).
S největší pravděpodobností se jedná o chybu v ovladači ALSA „%s“. Nahlaste prosím tento problém vývojářům ALSA. Volání snd_pcm_mmap_begin() vrátilo hodnotu, která je nezvykle vysoká: %lu bajtů (%lu ms).
S největší pravděpodobností se jedná o chybu v ovladači ALSA „%s“. Nahlaste prosím tento problém vývojářům ALSA. Volání snd_pcm_mmap_begin() vrátilo hodnotu, která je nezvykle vysoká: %lu bajtů (%lu ms).
S největší pravděpodobností se jedná o chybu v ovladači ALSA „%s“. Nahlaste prosím tento problém vývojářům ALSA. Volání snd_pcm_mmap_begin() vrátilo hodnotu, která je nezvykle vysoká: %lu bajtů (%lu ms).
S největší pravděpodobností se jedná o chybu v ovladači ALSA „%s“. Nahlaste prosím tento problém vývojářům ALSA. 