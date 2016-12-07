#!/bin/sh

#naprawia problemy jesli jest fix shake, ktory wyrzuca swoje rzeczy do loga

#rysuje wykresy w formie jpg i pakuje pliki tekstowe dla oszczednosci miejsca

cp log.lammps log.lammps.oryginal
~/testy_linux/sed_awk/kasowanie_shake/skrypt log.lammps.oryginal log.lammps.bezShake

rm -r -f wykresy
mkdir wykresy
cp ~/testy_linux/python/wykresyChudeLammps ./
pizza -f wykresyChudeLammps
rm ./wykresyChudeLammps
cp log.lammps* ./wykresy/
cp system_in* ./wykresy/
cp dump._0.cfg ./wykresy/
tar --lzma -cvf ./wykresy/logi.lzma ./wykresy/*.txt ./wykresy/log.*
rm -f ./wykresy/*.txt ./wykresy/log.*
