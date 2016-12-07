#!/bin/sh

SOURCE="${BASH_SOURCE[0]}"

while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$(cd -P "$( dirname "$SOURCE" )" && pwd )"

echo "$DIR"
echo $DIR/wykresyChudeLammps.py
echo `file $DIR/wykresyChudeLammps.py`


#naprawia problemy jesli jest fix shake, ktory wyrzuca swoje rzeczy do loga

#rysuje wykresy w formie jpg i pakuje pliki tekstowe dla oszczednosci miejsca

cp log.lammps log.lammps.oryginal
~/testy_linux/sed_awk/kasowanie_shake/skrypt log.lammps.oryginal log.lammps.bezShake

rm -r -f wykresy
mkdir wykresy
pizza -f wykresyChudeLammps.py
rm ./wykresyChudeLammps
cp log.lammps* ./wykresy/
cp system_in* ./wykresy/
cp dump._0.cfg ./wykresy/
tar --lzma -cvf ./wykresy/logi.lzma ./wykresy/*.txt ./wykresy/log.*
rm -f ./wykresy/*.txt ./wykresy/log.*
