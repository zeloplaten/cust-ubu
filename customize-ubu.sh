# edit variables
# to choose new hostname
CU_HOSTNAME9=ubu-1
#

# change hostname

HN0=$(hostname)  # don't rely on $HOSTNAME
hostnamectl set-hostname $CU_HOSTNAME9
HN9=$(hostname)  # use effective (new) hostname
HOSTS=/etc/hosts
sed --in-place=.bak \
  --expression='s/^/ /; s/$/ /;# insert leading and trailing blank' \
  --expression=':1;s/ '$HN0' / '$HN9' /ig;t1;# repeated substitution' \
  --expression='s/^ //; s/ $//;# remove inserted blanks' \
  $HOSTS

# change console font

CFILE=/etc/default/console-setup
touch $CFILE
sed --in-place=.bak \
  --expression='/^FONTFACE=/d' \
  --expression='/^FONTSIZE=/d' \
  $CFILE
echo '' >> $CFILE
echo 'FONTFACE="Terminus"' >> $CFILE
echo 'FONTSIZE="16x32"' >> $CFILE

update-initramfs -u