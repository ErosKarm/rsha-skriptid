# RSHA-SKRIPTID/BASH-SKRIPTID. 
 Skriptid on automatiseeritud, mis teevad instaleerimis&seadistamise lihtsamaks ning kiiremaks.
Kõik skriptid on kättesaadaval github.com/eroskarm.

## Paigaldamine
#### Antud READme's on erinevad automatiseeritud skripte, mis on kontrollitud ja töökorras. Kõik skriptid on kirjutatud Debian 9.12 versiooniga masina peal.
#### Skripte saab käivitada järgmise käsuga:
```
sh *FAILINIMI*.sh
```
Näide:
```
sh apache_paigaldus.sh
sh mysql_paigaldus.sh
```
## Skriptid tuleb käivitada järgmises järjekorras:
1. apache_paigaldus
2. mysql_paigaldus
3. php_paigaldus
4. pma_paigaldus
5. wordpress_paigaldus

## GIT'i paigaldamine
```
apt install git
```
## GIT'i seadistamine
```
git config --global user.name "*** ****"
git confug --global user.email email@domeen.com
git config --global core.editor nano
```
## NB!
### Selleks, et Te saaksite oma Wordpressile või PHPMYADMIN'ile ligi peate sisestama url vastava serveri ip, koos selle tähisega.
#### Näide:
- SERVERIIP/wordpress
- 192.168.1.10/wordpress
##
- SERVERIIP/phpmyadmin
- 192.168.1.10/phpmyadmin


