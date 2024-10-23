#! /bin/bash

echo "Atualizando o sistema"

apt-get update
apt-get upgrade -y

echo "Instalando o apache"
apt-get install apache2 -y

echo "Instalando o unzip"
apt-get install unzip -y

echo "Baixando e alocando os arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

echo "Processo finalizado"
cp -R * /var/www/html
