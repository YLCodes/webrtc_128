��    p      �  �         p	  ~  q	  �  �  �   �     �  	   �  �   �  �   {    C     K     T  	   `  	   j     t     �     �     �     �     �     �     �     �               3     G     [     o     �     �     �     �     �  (   �       
   '  	   2     <     B     Q     U  
   Z     e     q     �     �     �     �  !   �       !   +  !   M     o          �     �     �     �     �     �     �       	     	   (  
   2     =     J     a     i  %   �     �     �  '   �  1   �  "     ,   @     m     s     �     �  
   �     �     �     �     �     �     �     �               6     D     M     Q     W  	   `     j     p     �     �     �     �     �     �     �     �     �     �  j  �  �   i  n    t  �  0    �  3   >  �"  �    &     �&     '  �   '  �   �'  7  �(     �)     �)     *  	   *     *     ,*     :*     Q*     g*     *     �*     �*     �*     �*     �*     �*     +     $+     :+     P+     f+     |+     �+     �+  ,   �+     �+     
,  	   ,  
   $,     /,  	   >,     H,     Q,     `,     p,     �,     �,     �,  #   �,  #   �,     -  #   9-  #   ]-     �-     �-     �-     �-     �-     �-     .     .     .     %.     8.  
   A.  
   L.     W.     d.     }.  *   �.  5   �.     �.     /  5   /  :   J/  1   �/  <   �/     �/     �/     0     0     0      0     &0     +0     H0     U0     l0     ~0     �0  "   �0     �0     �0     �0     �0     �0  	   1     1     1     (1     11  	   :1     D1     K1     \1     k1     z1     �1     �1  )  �1  �   �3  /  �4  8  �6            k      A              =   B   6   l   H   [   U   `   ,   O                  2   L   D           +   X   Z         T       Q       5       ^   0   '      1   (   V   4         >   ?   m   f   i         ]   "   h   %   E   a       K   ;   W       P   7                          	                  *   9                  e   Y   &   J             8                                    @   !   )       b          \   .   G   #            C   N   j   F   -      <   I   
   n   $       d   R       c   o      M   /             _       p   :   3      g       S          --rate                            Sample rate (req. for rec) (default %u)
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
  -P  --properties                      Set node properties

   -p, --playback                        Playback mode
  -r, --record                          Recording mode
  -m, --midi                            Midi mode
  -d, --dsd                             DSD mode

 %s Input %s Output %s [options]
  -h, --help                            Show this help
      --version                         Show version
  -c, --config                          Load config (Default %s)
 %s [options] [<file>|-]
  -h, --help                            Show this help
      --version                         Show version
  -v, --verbose                         Enable verbose operations

 %s [options] [command]
  -h, --help                            Show this help
      --version                         Show version
  -d, --daemon                          Start as daemon (Default false)
  -r, --remote                          Remote daemon name

 %s on %s %s on %s@%s (invalid) Amplifier Analog Input Analog Mono Analog Mono (Left) Analog Mono (Right) Analog Mono Duplex Analog Mono Output Analog Output Analog Stereo Analog Stereo Duplex Analog Surround 2.1 Analog Surround 3.0 Analog Surround 3.1 Analog Surround 4.0 Analog Surround 4.1 Analog Surround 5.0 Analog Surround 5.1 Analog Surround 6.0 Analog Surround 6.1 Analog Surround 7.0 Analog Surround 7.1 Audio Gateway (A2DP Source & HSP/HFP AG) Automatic Gain Control Bass Boost Bluetooth Boost Built-in Audio Car Chat Chat Input Chat Output Digital Input (S/PDIF) Digital Output (S/PDIF) Digital Stereo (HDMI) Digital Stereo (IEC958) Digital Stereo Duplex (IEC958) Digital Surround 4.0 (IEC958/AC3) Digital Surround 5.1 (HDMI) Digital Surround 5.1 (IEC958/AC3) Digital Surround 5.1 (IEC958/DTS) Dock Microphone Docking Station Input Docking Station Line In Docking Station Microphone Dummy Output External Microphone Front Microphone Game Game Output HDMI / DisplayPort Handsfree Headphone Headphones Headphones 2 Headphones Mono Output Headset Headset Head Unit (HSP/HFP) Headset Head Unit (HSP/HFP, codec %s) Headset Microphone HiFi High Fidelity Duplex (A2DP Source/Sink) High Fidelity Duplex (A2DP Source/Sink, codec %s) High Fidelity Playback (A2DP Sink) High Fidelity Playback (A2DP Sink, codec %s) Input Internal Microphone Line In Line Out Microphone Modem Mono Mono Chat + 7.1 Surround Multichannel Multichannel Duplex Multichannel Input Multichannel Output No Amplifier No Automatic Gain Control No Bass Boost No Boost Off Phone Portable Pro Audio Radio Rear Microphone Speaker Speakerphone Speakers Stereo Stereo Duplex Tunnel for %s@%s Tunnel to %s/%s Unknown device Video Virtual Surround 7.1 snd_pcm_avail() returned a value that is exceptionally large: %lu byte (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_avail() returned a value that is exceptionally large: %lu bytes (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_avail_delay() returned strange values: delay %lu is less than avail %lu.
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_delay() returned a value that is exceptionally large: %li byte (%s%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_delay() returned a value that is exceptionally large: %li bytes (%s%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_mmap_begin() returned a value that is exceptionally large: %lu byte (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_mmap_begin() returned a value that is exceptionally large: %lu bytes (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. Project-Id-Version: pipewire
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-06-30 12:50+0200
PO-Revision-Date: 2022-06-30 13:14+0200
Last-Translator: gogo <trebelnik2@gmail.com>
Language-Team: Croatian <https://translate.fedoraproject.org/projects/pipewire/pipewire/hr/>
Language: hr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Generator: Poedit 2.3
X-Launchpad-Export-Date: 2017-04-20 21:04+0000
       --rate                            Frekvencija (potrebno za snimanje) (zadano je %u)
      --channels                        Broj kanala (potrebno za snimanje) (zadano je %u)
      --channel-map                     Broj kanala
                                            jedan od: "stereo", "surround-51",... ili
                                            zarezom odvojen popis naziva kanala: npr. "FL,FR"
      --format                          Format %s (potrebno za snimanje) (zadano je  %s)
      --volume                          Glasnoća zvuka strujanja 0-1.0 (zadano je %.3f)
  -q  --quality                         Kvaliteta normalizacije zvuka (0 - 15) (zadano je %d)

   -R, --remote                          Naziv udaljenog pozadinskog programa
      --media-type                      Postavi vrstu medija (zadano je %s)
      --media-category                  Postavi kategoriju medija (zadano je %s)
      --media-role                      Postavi namjenu medija (zadano je %s)
      --target                          Postavi odredište čvora (zadano je %s)
                                          0 znači bez povezivanja
      --latency                         Postavi latenciju čvora (zadano je %s)
                                          Xunit (jedinica = s, ms, us, ns)
                                          ili izravne uzorke (256)
                                          frekvencija je jednaka izvornoj datoteci
  -P  --properties                      Postavi svojstva čvora

   -p, --playback                        Način reprodukcije
  -r, --record                          Način snimanja
  -m, --midi                            Midi način
  -d, --dsd                             DSD način

 %s ulaz %s izlaz %s [mogućnosti]
  -h, --help                            Prikaži ovu pomoć
      --version                         Prikaži inačicu
  -c, --config                          Učitaj podešavanje (Zadano %s)
 %s [mogućnosti] [<datoteka>|-]
  -h, --help                            Prikaži ovu pomoć
      --version                         Prikaži inačicu
  -v, --verbose                         Omogući opširnije radnje

 %s [mogućnosti] [naredba]
  -h, --help                            Prikaži ovu pomoć
      --version                         Prikaži inačicu
  -d, --daemon                          Pokreni kao pozadinski program (Zadano je laž)
  -r, --remote                          Naziv udaljenog pozadinskog programa

 %s na %s %s na %s@%s (neispravno) Pojačalo Analogni ulaz Analogni mono Analogni mono (lijevi) Analogni mono (desni) Analogni mono obostrani Analogni mono izlaz Analogni izlaz Analogni stereo Analogni stereo obostrani Analogni surround 2.1 Analogni surround 3.0 Analogni surround 3.1 Analogni surround 4.0 Analogni surround 4.1 Analogni surround 5.0 Analogni surround 5.1 Analogni surround 6.0 Analogni surround 6.1 Analogni surround 7.0 Analogni surround 7.1 Zvučni pristupnik (A2DP izvor i HSP/HFP AG) Automatska kontrola pojačanja Pojačanje basa Bluetooth Pojačanje Ugrađeni zvuk Automobil Razgovor Ulaz razgovora Izlaz razgovora Digitalni ulaz (S/PDIF) Digitalni izlaz (S/PDIF) Digitalni stereo (HDMI) Digitalni stereo (IEC958) Digitalni stereo obostrani (IEC958) Digitalni surround 4.0 (IEC958/AC3) Digitalni surround 5.1 (HDMI) Digitalni surround 5.1 (IEC958/AC3) Digitalni surround 5.1 (IEC958/DTS) Ugrađeni mikrofon Ulaz priključne stanice Ulaz priključne stanice Mikrofon priključne stanice Lažni izlaz Vanjski mikrofon Prednji mikrofon Igra Izlaz za igre HDMI / DisplayPort Bez-ruku Slušalice Slušalice Slušalice 2 Mono izlaz za slušalice Slušalice s mikrofonom Jedinica slušalice s mikrofonom (HSP/HFP) Jedinica slušalice s mikrofonom (HSP/HFP, kôdek %s) Mikrofon sa slušalicama HiFi Telefonija visoke autentičnosti (A2DP izvor/slivnik) Telefonija visoke autentičnosti (A2DP slivnik, kôdek %s) Reprodukcija visoke autentičnosti (A2DP slivnik) Reprodukcija visoke autentičnosti (A2DP slivnik, kôdek %s) Ulaz Unutarnji mikrofon Ulaz Izlaz Mikrofon Modem Mono Mono razgovor + 7.1 Surround Višekanalni Višekanalni obostrani Višekanalni ulaz Višekanalni izlaz Bez pojačala Bez automatske kontrole pojačanja Bez pojačanja basa Bez pojačanja Isključeno Telefon Prijenosnik Pro Audio Radio Stražnji mikrofon Zvučnik Zvučnik Zvučnici Stereo Stereo obostrani Tunel za %s@%s Tunel do %s/%s Nepoznat uređaj Video Virtalni surround 7.1 snd_pcm_avail() je vratio vrijednost koja je iznimno velika: %lu bajt (%lu ms).
Najvjerojatnije je ovo greška ALSA upravljačkog programa '%s'. Prijavite problem ALSA razvijateljima. snd_pcm_avail() je vratio vrijednost koja je iznimno velika: %lu bajta (%lu ms).
Najvjerojatnije je ovo greška ALSA upravljačkog programa '%s'. Prijavite problem ALSA razvijateljima. snd_pcm_avail() je vratio vrijednost koja je iznimno velika: %lu bajta (%lu ms).
Najvjerojatnije je ovo greška ALSA upravljačkog programa '%s'. Prijavite problem ALSA razvijateljima. snd_pcm_avail_delay() je vratio nepoznate vrijednosti: kašnjenje %lu je manje od %lu.
Najvjerojatnije je ovo greška ALSA upravljačkog programa '%s'. Prijavite problem ALSA razvijateljima. snd_pcm_delay() je vratio vrijednost koja je iznimno velika: %li bajt (%s%lu ms).
Najvjerojatnije je ovo greška ALSA upravljačkog programa '%s'. Prijavite problem ALSA razvijateljima. snd_pcm_delay() je vratio vrijednost koja je iznimno velika: %li bajta (%s%lu ms).
Najvjerojatnije je ovo greška ALSA upravljačkog programa '%s'. Prijavite problem ALSA razvijateljima. snd_pcm_delay() je vratio vrijednost koja je iznimno velika: %li bajta (%s%lu ms).
Najvjerojatnije je ovo greška ALSA upravljačkog programa '%s'. Prijavite problem ALSA razvijateljima. snd_pcm_mmap_begin() je vratio vrijednost koja je iznimno velika: %lu bajt (%lu ms).
Najvjerojatnije je ovo greška ALSA upravljačkog programa '%s'. Prijavite problem ALSA razvijateljima. snd_pcm_mmap_begin() je vratio vrijednost koja je iznimno velika: %lu bajta (%lu ms).
Najvjerojatnije je ovo greška ALSA upravljačkog programa '%s'. Prijavite problem ALSA razvijateljima. snd_pcm_mmap_begin() je vratio vrijednost koja je iznimno velika: %lu bajta (%lu ms).
Najvjerojatnije je ovo greška ALSA upravljačkog programa '%s'. Prijavite problem ALSA razvijateljima. 