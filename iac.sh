#!/bin/bash

echo -e "Criando diretórios ...\n"

mkdir /publico
echo "Diretório criado: publico"

mkdir /adm
echo "Diretório criado: adm"

mkdir /ven
echo "Diretório criado: ven"

mkdir /sec
echo -e "Diretório criado: sec\n"

echo -e "Criando grupos de usuários ...\n"

groupadd GRP_ADM
echo "Grupo criado: GRP_ADM"

groupadd GRP_VEN
echo "Grupo criado: GRP_VEN"

groupadd GRP_SEC
echo -e "Grupo criado: GRP_SEC\n"

echo -e "Criando usuários do grupo de administração ...\n"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário criado: carlos"

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário criado: maria"

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo -e "Usuário criado: joao\n"

echo -e "Criando usuários do grupo de vendas ...\n"

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário criado: debora"

useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário criado: sebastiana"

useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo -e "Usuário criado: roberto\n"

echo -e "Criando usuários do grupo de segurança ...\n"

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário criado: josefina"

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário criado: amanda"

useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo -e "Usuário criado: rogerio\n"

echo -e "Adicionando usuários aos grupos ...\n"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo -e "Especificando permissões ...\n"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo realizado com sucesso!"
