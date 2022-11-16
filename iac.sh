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

groupadd grp_adm
echo "Grupo criado: grp_adm"

groupadd grp_ven
echo "Grupo criado: grp_ven"

groupadd grp_sec
echo -e "Grupo criado: grp_sec\n"

echo -e "Criando usuários do grupo de administração ...\n"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_adm
echo "Usuário criado: carlos"

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_adm
echo "Usuário criado: maria"

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_adm
echo -e "Usuário criado: joao\n"

echo -e "Criando usuários do grupo de vendas ...\n"

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_ven
echo "Usuário criado: debora"

useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_ven
echo "Usuário criado: sebastiana"

useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_ven
echo -e "Usuário criado: roberto\n"

echo -e "Criando usuários do grupo de segurança ...\n"

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_sec
echo "Usuário criado: josefina"

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_sec
echo "Usuário criado: amanda"

useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_sec
echo -e "Usuário criado: rogerio\n"

echo -e "Adicionando usuários aos grupos ...\n"

chown root:grp_adm /adm
chown root:grp_ven /ven
chown root:grp_sec /sec

echo -e "Especificando permissões ...\n"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo realizado com sucesso!"
