��    p      �  �         p	  ~  q	  �  �  �   �     �  	   �  �   �  �   �    O     W     `  	   l  	   v     �     �     �     �     �     �     �     �               +     ?     S     g     {     �     �     �     �     �  (   �       
   3  	   >     H     N     ]     a  
   f     q     }     �     �     �     �  !   �       !   7  !   Y     {     �     �     �     �     �     �                 	   *  	   4  
   >     I     V     m     u  %   �     �     �  '   �  1   �  "   )  ,   L     y          �     �  
   �     �     �     �     �     �     �               (     B     P     Y     ]     c  	   l     v     |     �     �     �     �     �     �     �     �     �     �  j  
  �   u  n  *  t  �  �    �  �  j  �"  �   &  
   �&     �&  �   �&  �   �'  A  �(     �)  	    *     
*     *     "*     0*     D*     ^*     y*     �*     �*     �*     �*     �*     �*     +     1+     J+     c+     |+     �+     �+     �+     �+  &   �+      ,  
   :,  	   E,     O,  
   V,     a,     g,     n,     },     �,     �,     �,     �,     �,  '   -  !   =-  '   _-  '   �-     �-     �-  #   �-  !   .     ).     ;.     K.     X.     ].     n.     �.  	   �.  	   �.     �.      �.  	   �.     �.  -   �.     "/     7/  -   F/  <   t/  &   �/  5   �/     0     0     %0     10     A0     J0     P0  '   ]0     �0     �0     �0     �0     �0     �0     1     1     !1     )1     11     ?1     O1     U1  	   c1  	   m1     w1     �1     �1     �1     �1     �1     �1     �1  �   �1  �   �2  �   q3  �   24            k      A              =   B   6   l   H   [   U   `   ,   O                  2   L   D           +   X   Z         T       Q       5       ^   0   '      1   (   V   4         >   ?   m   f   i         ]   "   h   %   E   a       K   ;          P   7                          	           W       *   9                  e   Y   &   J             8                                    @   !   )       b         \   .   G   #            C   N   j   F   -       <   I   
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

 %s on %s %s on %s@%s (invalid) Amplifier Analog Input Analog Mono Analog Mono (Left) Analog Mono (Right) Analog Mono Duplex Analog Mono Output Analog Output Analog Stereo Analog Stereo Duplex Analog Surround 2.1 Analog Surround 3.0 Analog Surround 3.1 Analog Surround 4.0 Analog Surround 4.1 Analog Surround 5.0 Analog Surround 5.1 Analog Surround 6.0 Analog Surround 6.1 Analog Surround 7.0 Analog Surround 7.1 Audio Gateway (A2DP Source & HSP/HFP AG) Automatic Gain Control Bass Boost Bluetooth Boost Built-in Audio Car Chat Chat Input Chat Output Digital Input (S/PDIF) Digital Output (S/PDIF) Digital Stereo (HDMI) Digital Stereo (IEC958) Digital Stereo Duplex (IEC958) Digital Surround 4.0 (IEC958/AC3) Digital Surround 5.1 (HDMI) Digital Surround 5.1 (IEC958/AC3) Digital Surround 5.1 (IEC958/DTS) Dock Microphone Docking Station Input Docking Station Line In Docking Station Microphone Dummy Output External Microphone Front Microphone Game Game Output HDMI / DisplayPort Handsfree Headphone Headphones Headphones 2 Headphones Mono Output Headset Headset Head Unit (HSP/HFP) Headset Head Unit (HSP/HFP, codec %s) Headset Microphone HiFi High Fidelity Duplex (A2DP Source/Sink) High Fidelity Duplex (A2DP Source/Sink, codec %s) High Fidelity Playback (A2DP Sink) High Fidelity Playback (A2DP Sink, codec %s) Input Internal Microphone Line In Line Out Microphone Modem Mono Mono Chat + 7.1 Surround Multichannel Multichannel Duplex Multichannel Input Multichannel Output No Amplifier No Automatic Gain Control No Bass Boost No Boost Off Phone Portable Pro Audio Radio Rear Microphone Speaker Speakerphone Speakers Stereo Stereo Duplex Tunnel for %s@%s Tunnel to %s/%s Unknown device Video Virtual Surround 7.1 snd_pcm_avail() returned a value that is exceptionally large: %lu byte (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_avail() returned a value that is exceptionally large: %lu bytes (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_avail_delay() returned strange values: delay %lu is less than avail %lu.
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_delay() returned a value that is exceptionally large: %li byte (%s%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_delay() returned a value that is exceptionally large: %li bytes (%s%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_mmap_begin() returned a value that is exceptionally large: %lu byte (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. snd_pcm_mmap_begin() returned a value that is exceptionally large: %lu bytes (%lu ms).
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. Project-Id-Version: PipeWire master
Report-Msgid-Bugs-To: https://gitlab.freedesktop.org/pipewire/pipewire/issues/new
POT-Creation-Date: 2022-04-03 12:56+0200
PO-Revision-Date: 2022-05-14 18:35+0300
Last-Translator: Oğuz Ersen <oguz@ersen.moe>
Language-Team: Turkish <tr>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Weblate 4.4.2
       --rate                            Örnekleme oranı (kayıt için gerekli) (öntanımlı %u)
      --channels                        Kanal sayısı (kayıt için gerekli) (öntanımlı %u)
      --channel-map                     Kanal haritası
                                            şunlardan biri: "stereo", "surround-51",... veya
                                            kanal adlarının virgülle ayrılmış listesi: örn. "FL,FR"
      --format                          Örnekleme biçimi %s (kayıt için gerekli) (öntanımlı %s)
      --volume                          Akış ses seviyesi 0-1.0 (öntanımlı %.3f)
  -q  --quality                         Yeniden örnekleyici kalitesi (0 - 15) (öntanımlı %d)

   -R, --remote                          Uzak arka plan programı adı
      --media-type                      Ortam türünü ayarla (öntanımlı %s)
      --media-category                  Ortam kategorisini ayarla (öntanımlı %s)
      --media-role                      Ortam rolünü ayarla (öntanımlı %s)
      --target                          Düğüm hedefini ayarla (öntanımlı %s)
                                          0, bağlanmayacağı anlamına gelir
      --latency                         Düğüm gecikmesini ayarla (öntanımlı %s)
                                          Xbirim (birim = s, ms, us, ns)
                                          veya doğrudan örneklemeler (256)
                                          oran kaynak dosyadan biridir
      --list-targets                    --target için kullanılabilir hedefleri listele

   -p, --playback                        Çalma modu
  -r, --record                          Kayıt modu
  -m, --midi                            Midi modu
  -d, --dsd                             DSD modu

 %s Girişi %s Çıkışı %s [seçenekler]
  -h, --help                            Bu yardımı göster
      --version                         Sürümü göster
  -c, --config                          Yapılandırmayı yükle (Öntanımlı %s)
 %s [seçenekler] <dosya>
  -h, --help                            Bu yardımı göster
      --version                         Sürümü göster
  -v, --verbose                         Ayrıntılı işlemleri etkinleştir

 %s [seçenekler] [komut]
  -h, --help                            Bu yardımı göster
      --version                         Sürümü göster
  -d, --daemon                          Arka plan programı olarak başlat (Öntanımlı olarak yanlış)
  -r, --remote                          Uzak arka plan programı adı

 %s, %s %s, %s@%s (geçersiz) Yükseltici Analog Giriş Analog Tek Kanallı Analog Tek Kanallı (Sol) Analog Tek Kanallı (Sağ) Analog Tek Kanallı İkili Analog Tek Kanallı Çıkış Analog Çıkış Analog Stereo Analog İkili Stereo Analog Çevresel Ses 2.1 Analog Çevresel Ses 3.0 Analog Çevresel Ses 3.1 Analog Çevresel Ses 4.0 Analog Çevresel Ses 4.1 Analog Çevresel Ses 5.0 Analog Çevresel Ses 5.1 Analog Çevresel Ses 6.0 Analog Çevresel Ses 6.1 Analog Çevresel Ses 7.0 Analog Çevresel Ses 7.1 Ses Geçidi (A2DP Kaynak & HSP/HFP AG) Otomatik Kazanç Denetimi Bas Artır Bluetooth Artır Dahili Ses Araba Sohbet Sohbet Girişi Sohbet Çıkışı Sayısal Giriş (S/PDIF) Sayısal Çıkış (S/PDIF) Sayısal Stereo (HDMI) Sayısal Stereo (IEC958) Sayısal İkili Stereo (IEC958) Sayısal Çevresel Ses 4.0 (IEC958/AC3) Sayısal Çevresel Ses 5.1 (HDMI) Sayısal Çevresel Ses 5.1 (IEC958/AC3) Sayısal Çevresel Ses 5.1 (IEC958/DTS) Yapışık Mikrofon Yerleştirme İstasyonu Girişi Yerleştirme İstasyonu Hat Girişi Yerleştirme İstasyonu Mikrofonu Temsili Çıkış Harici Mikrofon Ön Mikrofon Oyun Oyun Çıkışı HDMI / DisplayPort Ahizesiz Kulaklık Kulaklık Kulaklık 2 Kulaklık Tek Kanallı Çıkış Kulaklık Kulaklık Ana Birimi (HSP/HFP) Kulaklık Ana Birimi (HSP/HFP, çözücü %s) Mikrofonlu Kulaklık Yüksek Kalite Yüksek Kaliteli İkili (A2DP Kaynak/Alıcı) Yüksek Kaliteli İkili (A2DP Kaynak/Alıcı, çözücü %s) Yüksek Kaliteli Çalma (A2DP Alıcı) Yüksek Kaliteli Çalma (A2DP Alıcı, çözücü %s) Giriş Dahili Mikrofon Hat Girişi Hat Çıkışı Mikrofon Modem Tek Kanallı Tek Kanallı Sohbet + 7.1 Çevresel Ses Çok kanallı Çok Kanallı İkili Çok Kanallı Giriş Çok Kanallı Çıkış Yükseltici Yok Otomatik Kazanç Denetimi Yok Bas Artırma Yok Artırma Yok Kapalı Telefon Taşınabilir Profesyonel Ses Radyo Arka Mikrofon Hoparlör Hoparlör Hoparlörler Stereo İkili Stereo %s@%s için tünel %s/%s tüneli Bilinmeyen aygıt Video Sanal Çevresel Ses 7.1 snd_pcm_avail() son derece büyük bir değer döndürdü: %lu bayt (%lu ms).
Büyük ihtimalle bu bir ALSA sürücüsü '%s' hatasıdır. Lütfen bu sorunu ALSA geliştiricilerine bildirin. snd_pcm_avail_delay() garip değerler döndü: gecikme %lu kazançtan %lu daha azdır.
Büyük ihtimalle bu bir ALSA sürücüsü '%s' hatasıdır. Lütfen bu sorunu ALSA geliştiricilerine bildirin. snd_pcm_delay() son derece büyük bir değer döndürdü: %li bayt (%s%lu ms).
Büyük ihtimalle bu bir ALSA sürücüsü '%s' hatasıdır. Lütfen bu sorunu ALSA geliştiricilerine bildirin. snd_pcm_mmap_begin() son derece büyük bir değer döndürdü: %lu bayt (%lu ms).
Büyük ihtimalle bu bir ALSA sürücüsü '%s' hatasıdır. Lütfen bu sorunu ALSA geliştiricilerine bildirin. 