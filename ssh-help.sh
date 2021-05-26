
# requires script-support.sh


# default ssh
# /usr/bin/ssh

# ssh for DOD HPC 
# /usr/local/ossh/bin/ssh

kinit_atec() {
  kinit prestop@HPCMP.HPC.MIL
}

gordon() {
if is_os_darwin; then
    /usr/local/ossh/bin/ssh prestop@gordon13.navydsrc.hpc.mil
else
    /usr/bin/ssh prestop@gordon13.navydsrc.hpc.mil
fi

}

gaffney() {
if is_os_darwin; then
  /usr/local/ossh/bin/ssh prestop@gaffney07.navydsrc.hpc.mil
else
  /usr/bin/ssh prestop@gaffney07.navydsrc.hpc.mil
fi
}

excalibur() {
if is_os_darwin; then
  /usr/local/ossh/bin/ssh atec4dwx@excalibur-4dwx.arl.hpc.mil
else
    /usr/bin/ssh atec4dwx@excalibur-4dwx.arl.hpc.mil
fi

}

excalibur-test() {
if is_os_darwin; then
    /usr/local/ossh/bin/ssh atectest@excalibur-4dwx.arl.hpc.mil
else
    /usr/bin/ssh atectest@excalibur-4dwx.arl.hpc.mil
fi

}

centennial-prestop() {
if is_os_darwin; then
   /usr/local/ossh/bin/ssh prestop@centennial-4dwx.arl.hpc.mil
else
    /usr/bin/ssh prestop@centennial-4dwx.arl.hpc.mil
fi
}

centennial-test() {
if is_os_darwin; then
   /usr/local/ossh/bin/ssh atectest@centennial-4dwx.arl.hpc.mil
else
    /usr/bin/ssh atectest@centennial-4dwx.arl.hpc.mil
fi
}

# centeniall 21
centennial() {
if is_os_darwin; then
   /usr/local/ossh/bin/ssh atec4dwx@centennial-4dwx.arl.hpc.mil
else
    /usr/bin/ssh atec4dwx@centennial-4dwx.arl.hpc.mil
fi
}

atec-exposed() {
  /usr/bin/ssh prestop@atec-exposed.rap.ucar.edu
}

bmb-data() {
  /usr/bin/ssh prestop@bigmacb-data1.rap.ucar.edu
}

datapath1() {
  /usr/bin/ssh prestop@datapath1.rap.ucar.edu
}

datapath2() {
  /usr/bin/ssh prestop@datapath2.rap.ucar.edu
}

datapath-dev() {
  /usr/bin/ssh prestop@datapath-dev.rap.ucar.edu
}

data-access() {
  /usr/bin/ssh prestop@data-access.ucar.edu
}

atec-dataops4() {
  /usr/bin/ssh prestop@atec-dataops4.rap.ucar.edu
}

atec-dataops3() {
  /usr/bin/ssh prestop@atec-dataops3.rap.ucar.edu
}

deere() {
    /usr/bin/ssh prestop@deere.rap.ucar.edu
}

thyme() {
    /usr/bin/ssh prestop@thyme.rap.ucar.edu
}


curry() {
    /usr/bin/ssh prestop@curry.rap.ucar.edu
}

nog() {
    /usr/bin/ssh prestop@nog.rap.ucar.edu
}

oregano() {
    /usr/bin/ssh prestop@oregano.rap.ucar.edu
}

parsley() {
    /usr/bin/ssh prestop@parsley.rap.ucar.edu
}

sonbef() {
    /usr/bin/ssh prestop@sonbef.rap.ucar.edu
}

khaba() {
    /usr/bin/ssh prestop@khaba.rap.ucar.edu
}

raneb() {
    /usr/bin/ssh prestop@raneb.rap.ucar.edu
}

huni() {
    /usr/bin/ssh prestop@huni.rap.ucar.edu
}

nikara() {
    /usr/bin/ssh prestop@nikara.rap.ucar.edu
}

mizu() {
    /usr/bin/ssh prestop@mizu.rap.ucar.edu
}

horus() {
    /usr/bin/ssh prestop@horus.rap.ucar.edu
}

djoser() {
    /usr/bin/ssh prestop@djoser.rap.ucar.edu
}

floyd() {
    /usr/bin/ssh prestop@floyd.rap.ucar.edu
}

bowie() {
    /usr/bin/ssh prestop@bowie.rap.ucar.edu
}

ahmose() {
    /usr/bin/ssh prestop@ahmose.rap.ucar.edu
}

ncardas1() {
    /usr/bin/ssh prestop@ncardas1.rap.ucar.edu
}

ncardas2() {
    /usr/bin/ssh prestop@ncardas2.rap.ucar.edu
}

ncardas3() {
    /usr/bin/ssh prestop@ncardas3.rap.ucar.edu
}
 
deere-y() {
    /usr/bin/ssh -Y prestop@deere.rap.ucar.edu
}

thyme-y() {
    /usr/bin/ssh -Y prestop@thyme.rap.ucar.edu
}

fip-faa-y() {
    /usr/bin/ssh -Y prestop@fip-faa@sonbef.rap.ucar.edu
}

cip-faa-y() {
    /usr/bin/ssh -Y prestop@cip-faa@sonbef.rap.ucar.edu
}

fip-dev-y() {
    /usr/bin/ssh -Y prestop@fip-dev@sonbef.rap.ucar.edu
}

cip-dev-y() {
    /usr/bin/ssh -Y prestop@cip-dev@sonbef.rap.ucar.edu
}

curry-y() {
    /usr/bin/ssh -Y prestop@curry.rap.ucar.edu
}

oregano-y() {
    /usr/bin/ssh -Y prestop@oregano.rap.ucar.edu
}

parsley-y() {
    /usr/bin/ssh -Y prestop@parsley.rap.ucar.edu
}

sonbef-y() {
    /usr/bin/ssh -Y prestop@sonbef.rap.ucar.edu
}

khaba-y() {
    /usr/bin/ssh -Y prestop@khaba.rap.ucar.edu
}

huni-y() {
    /usr/bin/ssh -Y prestop@huni.rap.ucar.edu
}

ahmose-y() {
    /usr/bin/ssh -Y prestop@ahmose.rap.ucar.edu
}

ncardas1-y() {
    /usr/bin/ssh -Y prestop@ncardas1.rap.ucar.edu
}

ncardas2-y() {
    /usr/bin/ssh -Y prestop@ncardas2.rap.ucar.edu
}

smac-c4() {
    /usr/bin/ssh prestop@smac-c4-int1.rap.ucar.edu
}

smac-c4-y() {
    /usr/bin/ssh -Y prestop@smac-c4-int1.rap.ucar.edu
}

data-access() {
    /usr/bin/ssh prestop@data-access.ucar.edu
}


ldm() {
    runas ldm
}

fip-dev() {
    runas fip-dev
}

cip-dev() {
    runas cip-dev
}


fip-test() {
    runas fip-test
}

cip-test() {
    runas cip-test
}


iida() {
    runas iida
}

iifa() {
    runas iifa
}
