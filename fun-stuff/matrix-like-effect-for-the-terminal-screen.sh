# Matrix-like effect for the terminal screen
if [ `yum install cmatrix >/dev/null 2>&1; echo $?` -ne 0 ]
then
   cd /tmp
   wget -q http://www.asty.org/cmatrix/dist/cmatrix-1.2a.tar.gz
   tar xzf cmatrix-1.2a.tar.gz
   cd cmatrix-1.2a
   ./configure
   make install
fi
cmatrix
