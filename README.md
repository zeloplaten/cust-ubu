#### Customize ubuntu server installation

#### download customizer script
$ FILE=customize-ubu.sh \
$ wget https://raw.githubusercontent.com/zeloplaten/cust-ubu/main/$FILE -O $FILE

#### edit script variables as desired
$ nano $FILE

#### execute script as sudo
$ chmod 744 $FILE \
$ sudo ./$FILE