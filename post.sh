#!/bin/bash

# Comandos y archivos para el servidor PostgreSQL DB

# Comandos de red
ifconfig > ifconfig.postgresql.out
route -n > route.postgresql.out

# Copia de archivos de configuración
cp /etc/resolv.conf resolv.postgresql.conf

# Comandos de sistema
netstat -antp > netstat.postgresql.out

# Información sobre el paquete PostgreSQL
dpkg -l postgresql > dpkg.postgresql.out

# Copia de archivos de configuración de PostgreSQL
cp /etc/postgresql/14/main/postgresql.conf .
cp /etc/postgresql/14/main/pg_hba.conf .
