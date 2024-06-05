[![Versão](https://img.shields.io/badge/vers%C3%A3o-1.1-sucecess.svg)](https://github.com/oandersonbsilva/clearbin)
[![Plataformas](https://img.shields.io/badge/Plataformas-Linux%20x64%20%7C%20Linux%20x86-inactive.svg)](https://github.com/oandersonbsilva/clearbin)
[![user](https://img.shields.io/badge/user-ROOT-red.svg)](https://github.com/oandersonbsilva/clearbin)

<img src="https://raw.githubusercontent.com/And3R66/clearbin/master/logo3.png">
<strong> Limpeza geral do sistema Linux, otimizando seu desempenho e liberando espaço em disco. O script se destaca por ser abrangente e fácil de usar, mesmo para usuários iniciantes em Linux.</strong>


Versão Anterior 📦<kbd>V 1.0<kbd> 
  
# Instalação:
<ol>
<li><code>git clone https://github.com/bitcoinander/clearbin.git</code></li>
<li><code>cd clearbin</code></li>
<li><code>chmod a+x clearbin2.sh</code></li>
<li><code> ./clearbin2.sh </code></li>
</ol>

![image](https://github.com/oanderoficial/clearbin/assets/32654298/0d93317f-ef95-40ce-a539-f49fded95865)

# Necessário:

<ul>
<li>
<p>linux operating system.</p>
</li>
<li>
<p>Based on Debian
</p>
</li>
</ul>


# Funcionalidades:

- Verificação a Ativação do Áudio:
  - O script verifica se o serviço de áudio está ativo e o ativa, se necessário.
- Verificação da Conexão com a Internet:
  - O script verifica a conectividade com a internet antes de prosseguir com as tarefas de limpeza.
- Limpeza da Pasta TMP:
  - Remove todos os arquivos da pasta /var/tmp, que geralmente armazena arquivos temporários.
- Limpeza de Logs:
  - Remove os logs do Squid, liberando espaço em disco.
- Verificação de Arquivos Corrompidos:
  - Utiliza o comando apt-get check para verificar se há arquivos corrompidos no sistema.
- Limpeza do Cache do Firefox:
  - Remove o cache do Firefox, caso o navegador esteja instalado.
- Remoção de Cache Inútil do Sistema:
  - Executa os comandos apt-get clean e rm -f para remover arquivos de cache desnecessários do sistema.
- Desinstalação de Programas Não Utilizados:
  - Utiliza o comando apt-get autoremove para remover programas desnecessários e liberar espaço em disco.
- Limpeza da Memória Cache:
  - Grava o valor 3 no arquivo /proc/sys/vm/drop_caches para liberar memória cache sem a necessidade de reinicialização do sistema.
- Reparo de Pacotes Quebrados:
  - Utiliza o comando dpkg --configure -a para reparar pacotes quebrados durante atualizações.
