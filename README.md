# provisionamento-vagrant

Este projeto tem como objetivo demonstrar a criação e o provisionamento automatizado de um ambiente virtual Linux utilizando a ferramenta **Vagrant** em conjunto com **VirtualBox**. O cenário simula a configuração de um servidor básico, com instalação de serviços essenciais e boas práticas iniciais de segurança e administração.
A
cesse a página provisionada pelo navegador:

http://192.168.57.14 (interface privada

## Ambiente Virtual

A máquina virtual provisionada utiliza o **Ubuntu 22.04** e está configurada com:

- 1 GB de memória RAM
- Rede pública (modo bridge)
- Rede privada com IP fixo (`192.168.57.14`)
- Três discos adicionais de 1 GB cada
- Hostname: `vm1-ivalcleb`

## Ferramentas e Serviçosinstalados

O script de provisionamento (`config.sh`) realiza as seguintes configaracoes:

- Atualização completa do sistema
- Instalação de utilitários de rede e sistema:
  - `curl`, `wget`, `vim`, `htop`, `net-tools`, `git`
- Instalação e configuração de servidor web **Apache2**
- Ativação e configuração básica do **firewall UFW**:
  - Liberação de portas para SSH e HTTP(S)
- Instalação e ativação do **fail2ban**, para proteção contra ataques de força bruta
- Instalação do **unattended-upgrades** para atualizações automáticas de segurança
- Configuração do **NTP** para sincronização de horário
- Criação de uma página web de teste em `/var/www/html/index.html`

## Requisitos

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- Conexão de rede funcional para baixar as dependências

## Como Usar

1. Clone este repositório:
   ```bash
   git clone https://github.com/1valcl3b/provisionamento-vagrant.git
   cd provisionamento-vagrant
   '''
   
2. Dê permissão de execução ao script de provisionamento:

  ```bash
  chmod +x provision.sh
```

Inicie o ambiente virtual:
```bash
  vagrant up
```











