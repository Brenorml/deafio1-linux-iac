!/bin/bash

echo "criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios Criados com sucesso."

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso."

echo "Criando perfis dos usuarios e atribuindo contas aos grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC



echo "Perfis e atribuicoes realizadas com sucesso."

echo "Determinando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 

echo "Permissoes adicionadas com sucesso."

echo "Fim do procedimento."




