#### Customize ubuntu server installation

download customizer script
$ CFILE=customize-ubu.sh \
$ wget https://raw.githubusercontent.com/zeloplaten/cust-ubu/main/$CFILE -O $CFILE

edit script variables as desired
$ nano $CFILE

execute script as root
$ sudo su \
$ chmod +x $CFILE \
$ ./$CFILE
