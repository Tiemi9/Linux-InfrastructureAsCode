#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " Creating users and add to group..."

useradd carlos -c "Carlos Alberto" -s /bin/bash -m -p $(openssl passwd key123) -G GRP_ADM
passwd carlos -e
useradd maria -c "Maria das Dores" -s /bin/bash -m -p $(openssl passwd key123) -G GRP_ADM
passwd maria -e
useradd joao -c "João Edson" -s /bin/bash -m -p $(openssl passwd key123) -G GRP_ADM
passwd joao -e


useradd debora -c "Débora Maria" -s /bin/bash -m -p $(openssl passwd key123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m -p $(openssl passwd key123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto Monteiro" -s /bin/bash -m -p $(openssl passwd key123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina Almeida" -s /bin/bash -m -p $(openssl passwd key123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Amanda Vieira" -s /bin/bash -m -p $(openssl passwd key123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Rogerio Sousa" -s /bin/bash -m -p $(openssl passwd key123) -G GRP_SEC
passwd roberto -e

echo "Change permitions..."

chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Finish!!!"


