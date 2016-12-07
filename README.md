## UWAGA! skrytpty dostarczane w formie 'takiej w jakiej są'. Autor nie ponosi odpowiedzialności za ich użycie w jakimkolwiek celu

### Skrypt do rysowania wykresów na podstawie pliku log.lammps
Dzieli plik log lammps na pliki kolumnowe zawierające informacje wyrzucane
przez thermo - po jednej wartości (px, py itd. itp.) na kolumnę.

### Wymaga do działania:
* Założono, że katalog ~/bin jest w zmiennej systemowej PATH - czyli wszystko co tam umieścimy będzie możliwe do odpalenia z dowolnego katalogu
* python 3
* gnuplot
* pizza <- należy ściągnąć ze strony lammps i w katalogu ~/bin utworzyć dowiazanie symbolicznez z prawami uruchomieniowymi do pliku pizza.py o nazwie py.

### Instalacja:
* należy umieścić w katalogu ~/bin link symboliczny do pliku rysujPakujWykresy.sh
* plik wykresyChudeLammps.py należy umieścić w folderze scripts w pizza py


### Użycie:
w katalogu, w którym znajduje się plik log.lammps należy uruchomić skrypt. Polecenie uruchomieniowe skryptu to nazwa dowiązania symbolicznego utworzonego podczas instalacji.
Aby wyjść z komendy (TODO - wychodzenie automatyczne) należy wpisać exit().

Działanie:
tworzy katalog wykresy, umieszcza w nim wykresy wykonane na podstawie pliku log.lammps. Dodatkowo, tworzy archiwum, w którym zapisuje pliki na które został pdzielony log lammps. W międzyczasie tworzy trochę plików tymczasowych, i stara się po sobie posprzątać (trochę).
