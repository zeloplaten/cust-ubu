# edit variables
# to choose new hostname
CU_HOSTNAME9=ubu-1.local
#

HOSTS=/etc/hosts
cp -v $HOSTS $HOSTS.bak
awk -i inplace \
  'tolower($2)=="'$HOSTNAME'"{sub($2,"'$CU_HOSTNAME9'",$2)}; \
  {print}' \
  HOSTS
hostnamectl set-hostname $CU_HOSTNAME9