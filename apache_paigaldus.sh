# Antud skript kontrollib, kas apache on olemas, kui mitte siis paigaldatakse see.
#
#
#kontrollib kas apache on olemas
APACHE2=$(dpkg-query -W -f="${Status}" apache2 2>/dev/null | grep -c "ok installed")
#kui väärus on kontrolli puhul 0 siis ei ole apache installitud
if [ $APACHE2 -eq 0 ]; then
#Väljastame teate, ning paigaldame vastava teenuse.
echo "Apache2 paigaldamine...."
apt install apache2
echo "Apache on paigaldatud."
#käivitab kohe ka service kui on isntallitud ja annab ka statuse
service apache2 start
service apache2 status
#Kui Apache2 muutuja väärtus võrdub 1-ga
elif [ $APACHE2 -eq 1 ]; then
echo "Apache2 on teie masinasse juba paigaldatud."
#näitab kas apache töötab
service apache2 start
service apache2 status
fi
#skripti lõpp
