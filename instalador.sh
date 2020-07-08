linha="\n\n\n";

echo $linha;
apt-get remove docker docker-engine docker.io containerd runc -y;
echo $linha;

echo "Removi o Docker";

echo $linha;
apt-get update;
echo $linha;
apt-get upgrade -y;
echo $linha;
apt-get install node -y;
echo $linha;
apt-get install yarn -y;
echo $linha;
apt-get install git -y;
echo $linha;

echo "Atualizei o sistema e instalei, node yarn e git";

echo $linha;
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list;
echo $linha;
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -;
echo $linha;
sudo apt-get update;
echo $linha;
sudo apt-get install insomnia;
echo $linha;

echo "Instalei Insominia";

echo $linha;
sudo apt update;
echo $linha;
sudo apt install snapd;
echo $linha;

echo "Instalei Snap";

echo $linha;
sudo snap install postbird;
echo $linha;

echo "Instalei Postbird";

echo $linha;
sudo snap install spotify;
echo $linha;

echo $linha;
sudo snap install slack --classic
echo $linha;

echo $linha;
sudo snap install cornyjokes
echo $linha;

echo $linha;
sudo snap install --classic code
echo $linha;

echo $linha;
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common;
echo $linha;

echo "Instalei dependencias para instalar docker";

echo $linha;
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y ;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y ;
sudo apt-get update;
sudo apt-get install docker-ce -y ;
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose -y ;
sudo chmod +x /usr/local/bin/docker-compose -y ;
echo $linha;

echo "Instalei uma parte do docker";

echo $linha;
apt-get update;
echo $linha;

echo "Verifiquei se te algum pacote pra instalar";

echo $linha;
apt-get install docker-ce docker-ce-cli containerd.io -y;
echo $linha;

echo "Inslatei o restante do docker";

echo $linha;
sudo usermod -aG docker $USER ;
 sudo systemctl enable docker;
echo $linha;

echo "Agora o docker nao precisa mais de sudo :D";

echo $linha;		
sudo docker run --restart=always --name docker -p 5432:5432 -d -t kartoza/postgis;
echo $linha;
sudo docker run --restart=always -d -p 6379:6379 -i -t redis:3.2.5-alpine;
echo $linha;
sudo docker run --restart=always --name politec_plataform -p 27017:27017 -d mongo;
echo $linha;

echo "Instalei todos os conteiners do projeto \n Lembrando que eles vão iniciar com maquina";

