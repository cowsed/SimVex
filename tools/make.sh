cp -r -p ./ ~/VEX/Sim/tools/SimBuilds/
cp ~/VEX/Sim/makes/mkenv.mk ~/VEX/Sim/tools/SimBuilds/vex/mkenv.mk
cp ~/VEX/Sim/makes/mkrules.mk ~/VEX/Sim/tools/SimBuilds/vex/mkrules.mk

(cd ~/VEX/Sim/tools/SimBuilds/ && make)
