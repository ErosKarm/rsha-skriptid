#Skript mysql-serveri paigaldamiseks
#kontrollime, mite korda mysql-serveri olemasolu, ok installed
#otsib ja installerib vajaduse mysql serveri tarkvara
MYSQL=$(dpkg-query -W -f="${status}" mysql-server 2>/dev/null | grep -c "ok installed")
#mysql kui väärtus on 0 siis instaleerime selle peale
echo "paigaldame teenuse ja lisad"
apt install mysql-server
echo "mysql on paigaldatud"
#nüüd lisame käsu ilma kasutaja ja parooli lisamiseta
touch $HOME/.my.cnf #lisame vajalikud konfikuratsioonid faili kasutaja kodukausta
echo "[client]" >> $HOME/.my.cnf
echo "host = localhost" >> $HOME/.my.cnf
echo "user = root" >> $HOME/.my.cnf
echo "password = qwerty" >> $HOME/.my.cnf
#kui mysql väärtus on 1 siis annab teate et teenus on paigaldatud
echo "mysql-server on Teie masinasse jubapaigaldatud"
mysql
fi
#skripti lõpp
