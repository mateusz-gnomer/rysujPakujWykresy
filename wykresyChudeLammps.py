import subprocess

folder = "wykresy/"

l = log("log.lammps.bezShake")
for name in l.names:
    if name != "Step":
        l.write(folder + name + ".txt", "Step", name)
        with open(folder + "plottemp", "w") as plikTekstowy:
            plikTekstowy.write("set terminal png\n")
            plikTekstowy.write("set output \"" + folder+name + ".png\"\n")
            plikTekstowy.write("plot \"" + folder + name + ".txt\"")
        subprocess.call("gnuplot " +folder+ "plottemp", shell=True)
exit()
