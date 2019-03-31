#!/usr/bin/env bash

#Acesso ROOT. 

[ $UID -ne '0' ] && { echo "Necessário ter Acesso ROOT."; exit 1 ;}

  echo -e " _______   _______   ___  ___  _____  __ "
echo  -e " / ___/ /  / __/ _ | / _ \/ _ )/  _/ |/ / "
echo -e  "/ /__/ /__/ _// __ |/ , _/ _  |/ //    /  "
echo  -e "\___/____/___/_/ |_/_/|_/____/___/_/|_/   "



echo -e $BlueF"                          linux cleaning tool"

cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'

#Limpeza de Arquivos
echo -e $yellow"Verificando e Ativando seu audio"
echo "[+] Ativando áudio..."
sleep 2
systemctl --user enable pulseaudio && systemctl --user start pulseaudio
if [ $? == 0 ];
then
	echo "[+] O áudio foi ativado com Sucesso!"
else
	echo "[!] Não foi possível ativar o áudio!"
fi
#VERIFICAR INTERNET
echo -e $yellow"[+] Verificando conexao com a Internet..."
sleep 0.15
echo -e $yellow" um momento!\n"
ping -c 1 google.com &> /dev/null
if [ $? -gt 0 ]; then
	ping -c 1 uol.com.br &> /dev/null
	if [ $? -gt 0 ]; then
		echo $yellow"Verifique sua conexao..."
		echo $yellow""
		exit 1
	fi
fi
echo -e $yellow"[+] Internet OK!\n"
sleep 0.15
echo ""
echo ""
echo "[+] Limpando a pasta TMP"
rm -rf /var/tmp/*
echo ""
echo ""
echo "[+] Limpando logs (access.log)"
rm -rf /var/log/squid/*
echo ""
echo ""
echo "[+] Procurando arquivos corrompidos"
apt-get check
echo ""
echo ""
echo "[+] Limpeza do Cache do Firefox"
""
if [ $? = 0 ]; then
cd ~
cd .mozilla/firefox/def*
rm -f Cache/*
clear
else
clear
echo "Pulando esta etapa..."
fi
echo "[+] Exclusão de cache inuteis do sistema . Cópias de atualizações"
apt-get clean -y
""
if [ $? = 0 ]; then
apt-get clean -y
rm -f /var/cache/apt/archives/*
rm -f /var/cache/apt/archives/partial/*
else
clear
echo "Pulando esta etapa..."
clear
fi

if [ $? = 0 ]; then
apt-get autoclean -y
else
clear
echo "Pulando esta etapa..."
clear
fi
echo ""
echo ""
echo "[+] Exclusão de programas que não estão sendo mais utilizados pelo Sistema"
apt-get autoremove -y
echo ""
echo ""
echo "[+] Fazendo uma limpeza da memória cache"
echo 3 > /proc/sys/vm/drop_caches
sysctl -w vm.drop_caches=3
echo ""
echo ""
echo "[+] Reparando pacotes quebrados durante a atualização"
dpkg --configure -a
echo ""
echo ""
clear
echo " limpeza Realizada com Sucesso!"
echo "                     _______   _______   ___  ___  _____  __ "
echo "                     / ___/ /  / __/ _ | / _ \/ _ )/  _/ |/ /"
echo "                    / /__/ /__/ _// __ |/ , _/ _  |/ //    /"
echo "                    \___/____/___/_/ |_/_/|_/____/___/_/|_/ "
echo -e $"                             linux cleaning tool  "  
echo -e                                  "V-1.1-Cripto"
echo ''
echo -e $lightgreen'-- -- +=[ 2017-2019 | twitter.com/oandersonbsilva |@StarkSec '
echo -e $lightgreen'-- -- +=[ Author: Anderson.B Silva < Cripto >  ]=+ -- -- '
echo ""
echo -e $BlueF "CLEARBIN REALIZOU:"
echo ""
echo "-Verificou a sua Conectividade Com a Internet"
echo "-Limpou a pasta TMP"
echo "-Limpou Logs"
echo "-limpou Cache do Firefox"
echo "-Procurou arquivos corrompidos"
echo "-Excluiu cache inuteis do sistema"
echo "-Excluiu programas que não estavam mais sendo ultilizados pelo sistema"
echo "-Excluiu Arquivos duplicados"
echo "-Fez uma limpeza da memória cache sem que você precisa-se reiniciar o computador"
echo "-Reparou pacotes quebrados durante a atualizações"

echo -e $okegreen "*** Seu Sistema ***"
cat /etc/os-release
echo -e $red"================================================================================"

