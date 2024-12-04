#!/bin/bash

echo "Diretorios"

mkdir /public
mkdir /ven
mkdir /adm
mkdir /sec

echo "Grupos"

groupadd GP_VEN
groupadd GP_ADM
groupadd GP_SEC

echo "Usuários"

useradd joao -m -s /bin/bash -p $(openssl passwd 123Senha) -G GP_ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd 123Senha) -G GP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 123Senha) -G GP_ADM

useradd roberto -m -s /bin/bash -p $(openssl passwd 123Senha) -G GP_VEN
useradd debora -m -s /bin/bash -p $(openssl passwd 123Senha) -G GP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd 123Senha) -G GP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd 123Senha) -G GP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd 123Senha) -G GP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd 123Senha) -G GP SEC

echo "Permissões Diretorios"

chown root:GP_VEN /ven
chown root:GP_ADM /adm
chown root:GP_SEC /sec

chmod 770 /ven
chmod 770 /adm
chmod 777 /public
chmod 770 /sec

echo "Finish"
