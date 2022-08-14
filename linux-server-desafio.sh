#!/bin/bash

echo '*************INICIANDO O SCRIPT**************'

echo '**************Atualizando o servidor*******************'

sudo apt update 
sudo apt upgrade -y

echo '*****************Instalando o apache2*********************'

sudo apt install apache2 -y
sudo systemctl restart apache2
sudo systemctl status apach2

echo '*****************Instalando o unzip*****************'

sudo apt install unzip -y

echo '*****************Baixando os arquivos do github**************'

cd /var/www/html
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo '*************Descompactando o arquivo main********************'

sudo unzip main.zip
cd linux-site-dio-main
sudo mv * /var/www/html

echo '*****************Clonando o repositório do github***************'

cd /vini/desafio
sudo git clone https://github.com/MVinicius3091/DESAFIO-LINUX-DIO2.git
sudo cp -r linux-server-desafio.sh DESAFIO-LINUX-DIO2

echo '*****************Subindo o repositório para o github************'

cd DESAFIO-LINUX-DIO2
git config --global user.name 'MVinicius'
git config --global user.email 'mvs_tj14@hotmail.com'
git add *
git commit -m 'First commit'
git push

echo '****************Fim do script***************************'
