#!/bin/bash

# Atualizacao

apt-get update -y
apt-get upgrade -y

# Instalação de pacotes
apt-get install -y apache2 curl wget vim htop net-tools git ufw fail2ban unattended-upgrades ntp

# Configuração de firewall com UFW
ufw allow OpenSSH
ufw allow 'Apache Full'
ufw --force enable

#atualizações automáticas
dpkg-reconfigure -plow unattended-upgrades

# Ativação do Apache e NTP
systemctl enable apache2
systemctl start apache2
systemctl enable ntp
systemctl start ntp

# Configuraçõefail2ban
systemctl enable fail2ban
systemctl start fail2ban
