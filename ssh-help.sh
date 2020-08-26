
# default ssh
/usr/bin/ssh

# ssh for DOD HPC 
/usr/local/ossh/bin/ssh

function kinit_atec() {
  kinit prestop@HPCMP.HPC.MIL
}

function gordon() {
  /usr/local/ossh/bin/ssh prestop@gordon13.navydsrc.hpc.mil
}

function gaffney() {
  /usr/local/ossh/bin/ssh prestop@gaffney.navydsrc.hpc.mil
}

function excalibur() {
  /usr/local/ossh/bin/ssh atec4dwx@excalibur-4dwx.arl.hpc.mil
}

function excalibur-test() {
  /usr/local/ossh/bin/ssh atectest@excalibur-4dwx.arl.hpc.mil
}

function centennial-prestop() {
  /usr/local/ossh/bin/ssh prestop@centennial.arl.hpc.mil
}

function centennial-test() {
  /usr/local/ossh/bin/ssh atectest@centennial11.arl.hpc.mil
}

function centennial() {
  /usr/local/ossh/bin/ssh atec4dwx@centennial11.arl.hpc.mil
}

function atec-exposed() {
  /usr/bin/ssh atec-exposed.rap.ucar.edu
}

function bmb-data() {
  /usr/bin/ssh bigmacb-data1.rap.ucar.edu
}

function datapath1() {
  /usr/bin/ssh datapath1.rap.ucar.edu
}

function datapath2() {
  /usr/bin/ssh datapath2.rap.ucar.edu
}

function data-access() {
  /usr/bin/ssh data-access.ucar.edu
}

function atec-dataops4() {
  /usr/bin/ssh atec-dataops4.rap.ucar.edu
}

function atec-dataops3() {
  /usr/bin/ssh atec-dataops3.rap.ucar.edu
}

function deere {
    /usr/bin/ssh  deere.rap.ucar.edu
}

function thyme {
    /usr/bin/ssh  thyme.rap.ucar.edu
}

function fip-faa {
    /usr/bin/ssh  fip-faa@sonbef.rap.ucar.edu
}

function cip-faa {
    /usr/bin/ssh  cip-faa@sonbef.rap.ucar.edu
}

function fip-dev {
    /usr/bin/ssh  fip-dev@sonbef.rap.ucar.edu
}

function cip-dev {
    /usr/bin/ssh  cip-dev@sonbef.rap.ucar.edu
}

function curry {
    /usr/bin/ssh  curry.rap.ucar.edu
}

function oregano {
    /usr/bin/ssh  oregano.rap.ucar.edu
}

function parsley {
    /usr/bin/ssh  parsley.rap.ucar.edu
}

function sonbef {
    /usr/bin/ssh  sonbef.rap.ucar.edu
}

function khaba {
    /usr/bin/ssh  khaba.rap.ucar.edu
}

function raneb {
    /usr/bin/ssh  raneb.rap.ucar.edu
}

function huni {
    /usr/bin/ssh  huni.rap.ucar.edu
}

function floyd {
    /usr/bin/ssh  floyd.rap.ucar.edu
}

function ahmose {
    /usr/bin/ssh  ahmose.rap.ucar.edu
}

function ncardas1 {
    /usr/bin/ssh  ncardas1.rap.ucar.edu
}

function ncardas2 {
    /usr/bin/ssh  ncardas2.rap.ucar.edu
}

function ncardas3 {
    /usr/bin/ssh  ncardas3.rap.ucar.edu
}

function deere-y {
    /usr/bin/ssh -Y deere.rap.ucar.edu
}

function thyme-y {
    /usr/bin/ssh -Y thyme.rap.ucar.edu
}

function fip-faa-y {
    /usr/bin/ssh -Y fip-faa@sonbef.rap.ucar.edu
}

function cip-faa-y {
    /usr/bin/ssh -Y cip-faa@sonbef.rap.ucar.edu
}

function fip-dev-y {
    /usr/bin/ssh -Y fip-dev@sonbef.rap.ucar.edu
}

function cip-dev-y {
    /usr/bin/ssh -Y cip-dev@sonbef.rap.ucar.edu
}

function curry-y {
    /usr/bin/ssh -Y curry.rap.ucar.edu
}

function oregano-y {
    /usr/bin/ssh -Y oregano.rap.ucar.edu
}

function parsley-y {
    /usr/bin/ssh -Y parsley.rap.ucar.edu
}

function sonbef-y {
    /usr/bin/ssh -Y sonbef.rap.ucar.edu
}

function khaba-y {
    /usr/bin/ssh -Y khaba.rap.ucar.edu
}

function huni-y {
    /usr/bin/ssh -Y huni.rap.ucar.edu
}

function ahmose-y {
    /usr/bin/ssh -Y ahmose.rap.ucar.edu
}

function ncardas1-y {
    /usr/bin/ssh -Y ncardas1.rap.ucar.edu
}

function ncardas2-y {
    /usr/bin/ssh -Y ncardas2.rap.ucar.edu
}

function smac-c4 {
    /usr/bin/ssh smac-c4-int1.rap.ucar.edu
}

function smac-c4-y {
    /usr/bin/ssh -Y smac-c4-int1.rap.ucar.edu
}

function data-access {
    /usr/bin/ssh data-access.ucar.edu
}


