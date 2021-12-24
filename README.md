# Customize ubuntu server installation

# download customizer script
$ FILE=customize-ubu.sh
$ wget https://raw.githubusercontent.com/zeloplaten/cust-ubu/main/$FILE -O $FILE
$ chmod 744 $FILE

# edit script variables as desired
# e.g. $ nano $FILE

# execute script as sudo
$ sudo ./$FILE