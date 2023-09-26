#!/bin/bash

# Comandos y archivos para el servidor Odoo

# Comandos de red
ifconfig > ifconfig.odoo.out
route -n > route.odoo.out

# Copia de archivos de configuración
cp /etc/resolv.conf resolv.odoo.conf

# Comandos de sistema
sysctl net.ipv4.ip_forward > ip_forward.out
iptables -L -t nat > iptables.odoo.out
netstat -antp > netstat.odoo.out

# Información sobre el paquete Odoo
dpkg -l odoo > dpkg.odoo.out

# Copia de archivos de configuración y logs de Odoo
cp /etc/odoo/odoo.conf .
cp /var/log/odoo/odoo-server.log .
