#!/bin/bash
# Uso: zentema NOMBRENUEVOTEMA
# Requiere tener instalado drush
drush dl zen
# 1
cp -a zen/STARTERKIT $1
# 2
sed -i '/^name/d' $1/STARTERKIT.info.txt
sed -i '/^description/d' $1/STARTERKIT.info.txt
echo "name = $1" >> $1/$1.info
echo "description = Tema $1" >> $1/$1.info
cat $1/STARTERKIT.info.txt >> $1/$1.info
rm $1/STARTERKIT.info.txt
# 3
# 4
sed -i 's/STARTERKIT/'$1'/g' $1/template.php
sed -i 's/STARTERKIT/'$1'/g' $1/theme-settings.php
# 5
# 6
cp zen/templates/* $1/templates
# 7
# 8
rm -r zen
