��    o      �  �         `	  ~  a	  �  �  �   �     �  	   �  �   �  �   {    ?     G     P  	   \  	   f     p     }     �     �     �     �     �     �     �               /     C     W     k          �     �     �     �  (   �       
   #  	   .     8     >     M     Q  
   V     a     m     �     �     �     �  !   �       !   '  !   I     k     {     �     �     �     �     �     �     �  	     	     
   !     ,     9     P     X  %   t     �     �  '   �  1   �  "     ,   /     \     b     v     ~  
   �     �     �     �     �     �     �     �     �          %     3     <     @     F  	   O     Y     _     o     w     �     �     �     �     �     �     �     �  j  �  �   X  n    t  |  �  �  �  �  7  �"  �   �%  
   �&  	   �&  �   �&  �   �'    w(     �)     �)     �)     �)     �)     �)     �)     �)     *     -*     D*     V*     j*     �*     �*     �*     �*     �*     �*     +     -+     E+     ]+     u+  )   �+     �+     �+  	   �+     �+     �+     	,     ,     ,     ,,     ?,     X,     p,     �,      �,  !   �,  !   �,  !   -  !   )-     K-     ]-  %   z-     �-     �-     �-     �-     �-     �-     
.     .     %.     3.     C.     c.  "   q.  ,   �.     �.     �.  +   �.  5   /  +   C/  5   o/     �/     �/     �/     �/  	   �/     �/     �/     �/  
   0     0     +0     >0     P0  #   a0     �0     �0  	   �0     �0  	   �0     �0     �0     �0     �0     �0     �0     1     
1     1     ,1     >1     W1     ^1  �  s1  �   �2  ~  �3  �  @5            j      @              <   A   6   k   G   Z   T   _   ,   N                  2   K   C           +   W   Y         S       P       5       ]   0   '      1   (   U   4         =   >   l   e   h         \   "   g   %   D   `       J   :          O   7                          	           V       *                      d   X   &   I             8                                    ?   !   )       a         [   .   F   #            B   M   i   E   -       ;   H   
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
PO-Revision-Date: 2022-03-30 19:37+0100
Last-Translator: Hugo Carvalho <hugokarvalho@hotmail.com>
Language-Team: Portuguese <https://l10n.gnome.org/teams/pt/>
Language: pt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 3.0.1
       --rate                            Taxa de amostra (req. por rec) (padrão: %u)
      --channels                        Número de canais (req. por rec) (padrão: %u)
      --channel-map                     Mapa de canal
                                            um de : “stereo”, “surround-51”,... ou
                                            lista separada por vírgulas de nomes de
                                            canal: e.x.: “FL,FR”
      --format                          Formato da amostra %s (req. por rec) (padrão: %s)
      --volume                          Volume do fluxo 0-1.0 (padrão: %.3f)
  -q  --quality                         Qualidade da reamostra (0 - 15) (padrão: %d)

   -R, --remote                          Nome do daemon remoto
      --media-type                      Define o tipo de média (padrão: %s)
      --media-category                  Define a categoria de média (padrão: %s)
      --media-role                      Define o papel de média (padrão: %s)
      --target                          Define o alvo do nó (padrão: %s)
                                          0 significa não vincular
      --latency                         Define a latência do nó (padrão: %s)
                                          Xunit (unidade = s, ms, us, ns)
                                          ou amostras diretas (256)
                                          a taxa é um dos ficheiros fontes
      --list-targets                    Lista alvos disponíveis para --target

   -p, --playback                        Modo de reprodução
  -r, --record                          Modo de gravação
  -m, --midi                            Modo midi
  -d, --dsd                             Modo DSD

 Entrada %s Saída %s %s [options]
  -h, --help                            Mostra esta ajuda
      --version                         Mostra a versão
  -c, --config                          Carrega uma configuração (Padrão %s)
 %s [options] <file>
  -h, --help                            Mostra esta ajuda
      --version                         Mostra a versão
  -v, --verbose                         Ativa operações descritivas

 %s [options] [command]
  -h, --help                            Mostra esta ajuda
      --version                         Mostra a versão
  -d, --daemon                          Inicia como daemon (falso por padrão)
  -r, --remote                          Nome do daemon remoto

 %s em %s %s em %s@%s (inválido) Amplificador Entrada analógica Mono Analógico Mono Analógico (Esquerda) Mono Analógico (Direita) Mono duplex analógico Saída mono analógica Saída analógica Estéreo Analógico Estéreo duplex analógico Surround 2.1 analógico Surround 3.0 analógico Surround 3.1 analógico Surround 4.0 analógico Surround 4.1 analógico Surround 5.0 analógico Surround 5.1 analógico Surround 6.0 analógico Surround 6.1 analógico Surround 7.0 analógico Surround 7.1 analógico Porta de áudio (A2DP Fonte & HSP/HFP AG) Controlo automático de aumento Aumentar graves Bluetooth Aumentar Áudio interno Carro Conversa Entrada de conversa Saída de conversa Entrada digital (S/PDIF) Saída digital (S/PDIF) Estéreo Digital (HDMI) Estéreo Digital (IEC958) Estéreo duplex digital (IEC958) Surround Digital 4.0 (IEC958/AC3) Surround 5.1 (IEC958/AC3) digital Surround Digital 5.1 (IEC958/AC3) Surround Digital 5.1 (IEC958/DTS) Microfone de base Base de entrada da estação Base de linha de entrada da estação Base de microfone da estação Microfone externo Microfone frontal Jogo Saída de jogo HDMI / DisplayPort Mãos livres Auscultadores Auscultadores Auscultadores 2 Saída analógica auscultadores Auscultadores Unidade de Auscultadores (HSP/HFP) Unidade de Auscultadores (HSP/HFP, codec %s) Microfone de auscultadores HiFi Duplex de Alta Fidelidade (A2DP Fonte/Sink) Duplex de Alta Fidelidade (A2DP Fonte/Sink, codec %s) Reprodução de Alta Fidelidade (A2DP Sink) Reprodução de Alta Fidelidade (A2DP Sink, codec %s) Entrada Microfone interno Linha de entrada Linha de saída Microfone Modem Mono Mono Chat + 7.1 Surround Multicanal Duplex multicanal Entrada multicanal Saída multicanal Sem amplificador Sem controlo automático de aumento Não aumentar graves Não aumentar Desligado Telefone Portátil Pró áudio Rádio Microfone traseiro Coluna Coluna Colunas Estéreo Duplex estéreo Túnel para %s@%s Túnel para %s/%s Dispositivo desconhecido Vídeo Surround Virtual 7.1 snd_pcm_avail() retornou um valor excecionalmente elevado: %lu byte (%lu ms).
Provavelmente isto é um erro no controlador ALSA '%s'. Por favor, reporte este problema aos programadores do ALSA. snd_pcm_avail() retornou um valor excecionalmente elevado: %lu bytes (%lu ms).
Provavelmente isto é um erro no controlador ALSA '%s'. Por favor, reporte este problema aos programadores do ALSA. snd_pcm_avail_delay() retornou um valor excecionalmente elevado: %lu bytes (%lu ms).
Provavelmente isto é um erro no controlador ALSA "%s". Por favor, reporte este problema aos programadores do ALSA. snd_pcm_delay() retornou um valor excecionalmente elevado: %li byte (%s%lu ms).
Provavelmente isto é um erro no driver ALSA '%s'. Por favor, reporte este problema aos programadores do ALSA. snd_pcm_delay() retornou um valor excecionalmente elevado: %li bytes (%s%lu ms).
Provavelmente isto é um erro no driver ALSA '%s'. Por favor, reporte este problema aos programadores do ALSA. snd_pcm_mmap_begin() retornou um valor excecionalmente elevado: %lu byte (%lu ms).
Provavelmente isto é um erro no driver ALSA '%s'. Por favor, reporte este problema aos programadores do ALSA. snd_pcm_mmap_begin() retornou um valor excecionalmente elevado: %lu bytes (%lu ms).
Provavelmente isto é um erro no driver ALSA '%s'. Por favor, reporte este problema aos programadores do ALSA. 