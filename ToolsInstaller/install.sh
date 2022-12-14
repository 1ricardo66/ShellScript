echo	"Criando pasta backup RDP"

mkdir ~/Documents/RDP

echo "Atualizando sistema!!..."
sudo apt-get update -y
sudo apt-get upgrade -y


echo "Baixando lista de ferramentas
====================
 #wine
 #fping
 #nmap
 #ncat
 #ndiff
 #git
 #whois
 #vim-tiny
 #net-tools
 #ipcalc
 #bgpq3
====================
"
sudo apt-get install wine fping nmap ncat ndiff git  whois vim-tiny net-tools ipcalc bgpq3 -y

echo "Download finalizado...."

echo "Baixando Anydesk..."

wget https://download.anydesk.com/linux/anydesk_6.2.0-1_amd64.deb -P ~/Downloads/

echo "Instalando Anydesk"

sudo dpkg -i ~/Downloads/anydesk_6.2.0-1_amd64.deb



echo "Baixando Remmina..."

sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt update
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret -y

echo "Baixando Winbox..."

wget https://download.mikrotik.com/winbox/3.37/winbox64.exe -P ~/Downloads/

echo "Baixando Opera..."

wget https://download3.operacdn.com/pub/opera/desktop/89.0.4447.83/linux/opera-stable_89.0.4447.83_amd64.deb -P ~/Downloads/

echo "Instalando Opera..."

sudo dpkg -i ~/Downloads/opera-stable_89.0.4447.83_amd64.deb


echo "Baixando VS code..."

wget https://az764295.vo.msecnd.net/stable/da76f93349a72022ca4670c1b84860304616aaa2/code_1.70.0-1659589288_amd64.deb -P ~/Downloads/

echo "Instalando VS code"

sudo dpkg -i ~/Downloads/code_1.70.0-1659589288_amd64.deb

echo "Baixando Spotify..."

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

echo "Baixando Termius..."

wget https://autoupdate.termius.com/linux/Termius.deb -P ~/Downloads/

echo "Instalando Termius"

sudo dpkg -i ~/Downloads/Termius.deb

echo "Baixando Wireshark..."

sudo add-apt-repository ppa:wireshark-dev/stable
sudo apt-get update -y
sudo apt-get install wireshark -y