��    q      �  �   ,      �	  ~  �	  �    �        �  	   �  �   �  �   r    6     >     G  	   S  	   ]     g     t     �     �     �     �     �     �     �     �          &     :     N     b     v     �     �     �     �  (   �       
     	   %     /     5     D     H  
   M     X     d     {     �     �     �  !   �       !     !   @     b     r     �     �     �     �     �     �     �  	     	     
        #     0     G     O  %   k     �     �  '   �  1   �  "     ,   &     S     Y     m     u  
   ~     �     �     �     �     �     �     �     �               *     3     7     =     S  	   \     f     l     |     �     �     �     �     �     �     �     �     �       j    �   �  n  :  t  �  �    �     6  �"  �   &  
   �&  	   �&  �   �&  �   �'    }(     �)     �)     �)     �)     �)     �)  !   �)      *     /*     M*     k*     }*     �*     �*     �*     �*     �*     +     $+     <+     T+     l+     �+     �+  +   �+     �+     �+  	   ,     ,     $,     3,  	   9,     C,     X,     l,     �,     �,     �,      �,  !   �,     -  !   .-  !   P-     r-     �-  0   �-  )   �-     .     .     ).     ..     =.  	   P.     Z.     j.     z.  !   �.     �.     �.  &   �.     �.     /  .   /  8   C/  .   |/  9   �/     �/     �/     �/     0  	    0     *0     00  $   50  
   Z0     e0     w0     �0     �0  !   �0     �0     �0  	   �0     �0     1  	   !1  	   +1     51     <1     O1     \1     e1  #   s1     �1     �1     �1     �1     �1     �1     �1  �  	2  �   �3  �  �4  �  >6     >       [         N   k       #       c   G             `   j       f   .              \              :       )   d   T          _   o   -   5   W   R   O       ,   S                l             2   =       p   Y   /       H       C         m       F   a   '                      $   e   I   ^   7       
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
Most likely this is a bug in the ALSA driver '%s'. Please report this issue to the ALSA developers. Project-Id-Version: pipewire
Report-Msgid-Bugs-To: https://gitlab.freedesktop.org/pipewire/pipewire/-/issues
POT-Creation-Date: 2021-08-01 15:31+0000
PO-Revision-Date: 2021-08-01 17:02-0300
Last-Translator: Rafael Fontenelle <rafaelff@gnome.org>
Language-Team: Brazilian Portuguese <gnome-pt_br-list@gnome.org>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1)
X-Generator: Gtranslator 40.0
       --rate                            Taxa de amostra (req. por rec) (padrão: %u)
      --channels                        Número de canais (req. por rec) (padrão: %u)
      --channel-map                     Mapa de canal
                                            um de : “stereo”, “surround-51”,... ou
                                            lista separada por vírgulas de nomes de
                                            canal: e.x.: “FL,FR”
      --format                          Formata da amostra %s (req. por rec) (padrão: %s)
      --volume                          Volume do fluxo 0-1.0 (padrão: %.3f)
  -q  --quality                         Qualidade da reamostra (0 - 15) (padrão: %d)

   -R, --remote                          Nome do daemon remoto
      --media-type                      Define o tipo de mídia (padrão: %s)
      --media-category                  Define a categoria de mídia (padrão: %s)
      --media-role                      Define o papel de mídia (padrão: %s)
      --target                          Define o alvo do nó (padrão: %s)
                                          0 significa não vincular
      --latency                         Define a latência do nó (padrão: %s)
                                          Xunit (unidade = s, ms, us, ns)
                                          ou amostras diretas (256)
                                          a taxa é um dos arquivos fontes
      --list-targets                    Lista alvos disponíveis para --target

   -p, --playback                        Modo de reprodução
  -r, --record                          Modo de gravação
  -m, --midi                            Modo midi

 Entrada %s Saída %s %s [opções]
  -h, --help                            Mostra esta ajuda
      --version                         Mostra a versão
  -c, --config                          Carrega uma configuração (Padrão: %s)
 %s [opções] <arquivo>
  -h, --help                            Mostra esta ajuda
      --version                         Mostra a versão
  -v, --verbose                         Habilita operações verbosas

 %s [opções] [comando]
  -h, --help                            Mostra esta ajuda
      --version                         Mostra a versão
  -d, --daemon                          Inicia como daemon (Padrão: false)
  -r, --remote                          Nome do daemon remoto

 %s em %s %s em %s@%s (inválido) Amplificador Entrada analógica Monofônico analógico Monofônico analógico (Esquerdo) Monofônico analógico (Direito) Duplex monofônico analógico Saída analógica monofônica Saída analógica Estéreo analógico Duplex estéreo analógico Surround analógico 2.1 Surround analógico 3.0 Surround analógico 3.1 Surround analógico 4.0 Surround analógico 4.1 Surround analógico 5.0 Surround analógico 5.1 Surround analógico 6.0 Surround analógico 6.1 Surround analógico 7.0 Surround analógico 7.1 Gateway de áudio (fonte A2DP & HSP/HFP AG) Controle automático de ganho Reforço de graves Bluetooth Reforço Áudio interno Carro Bate-papo Entrada de bate-papo Saída de bate-papo Entrada digital (S/PDIF) Saída digital (S/PDIF) Estéreo digital (HDMI) Estéreo digital (IEC958) Duplex estéreo digital (IEC958) Surround digital 4.0 (IEC958/AC3) Surround digital 5.1 (HDMI) Surround digital 5.1 (IEC958/AC3) Surround digital 5.1 (IEC958/DTS) Microfone de base de encaixe Entrada da base de encaixe Entrada de linha de estação de base de encaixe Microfone de estação de base de encaixe Microfone externo Microfone frontal Jogo Saída de jogo HDMI / DisplayPort Handsfree Fones de ouvido Fones de ouvido Fones de ouvido 2 Saída analógica fones de ouvido Headset Unidade de headset (HSP/HFP) Unidade de headset (HSP/HFP, codec %s) Microfone de headset HiFi Duplex de alta-fidelidade (fonte/destino A2DP) Duplex de alta-fidelidade (fonte/destino A2DP, codec %s) Reprodução de alta-fidelidade (destino A2DP) Reprodução de alta-fidelidade (destino  A2DP, codec %s) Entrada Microfone interno Entrada de linha Saída de linha Microfone Modem Mono Bate-papo monofônico + surround 7.1 Multicanal Duplex multicanal Entrada multicanal Saída multicanal Sem amplificador Sem controle automático de ganho Sem reforço de graves Sem reforço Desligado Telefone Sistema de Mídia PipeWire Portátil Pro Audio Rádio Microfone traseiro Auto-falante Viva voz Alto-falantes Inicia o Sistema de Mídia PipeWire Estéreo Duplex estéreo Túnel para %s@%s Túnel para %s/%s Dispositivo desconhecido Vídeo Surround virtual 7.1 snd_pcm_avail() retornou um valor que é excepcionalmente grande: %lu byte (%lu ms).
É mais provável que isso seja um erro no driver “%s” do ALSA. Por favor, relate esse problema aos desenvolvedores do ALSA. snd_pcm_avail() retornou um valor que é excepcionalmente grande: %lu bytes (%lu ms).
É mais provável que isso seja um erro no driver “%s” do ALSA. Por favor, relate esse problema aos desenvolvedores do ALSA. snd_pcm_avail() retornou um valor estranho: o atraso de %lu é menor do que (%lu ms).
É mais provável que isso seja um erro no driver “%s” do ALSA. Por favor, relate esse problema aos desenvolvedores do ALSA. snd_pcm_delay() retornou um valor que é excepcionalmente grande: %li byte (%s%lu ms).
É mais provável que isso seja um erro no driver “%s” do ALSA. Por favor, relate esse problema aos desenvolvedores do ALSA. snd_pcm_delay() retornou um valor que é excepcionalmente grande: %li bytes (%s%lu ms).
É mais provável que isso seja um erro no driver “%s” do ALSA. Por favor, relate esse problema aos desenvolvedores do ALSA. snd_pcm_mmap_begin() retornou um valor que é excepcionalmente grande: %lu byte (%lu ms).
É mais provável que isso seja um erro no driver “%s” do ALSA. Por favor, relate esse problema aos desenvolvedores do ALSA. snd_pcm_mmap_begin() retornou um valor que é excepcionalmente grande: %lu bytes (%lu ms).
É mais provável que isso seja um erro no driver “%s” do ALSA. Por favor, relate esse problema aos desenvolvedores do ALSA. 