export CFLAGS="-fPIC -pipe -mcpu=cortex-a7 -mtune=cortex-a7 -march=armv7ve -mfpu=neon-vfpv4 -mfloat-abi=hard -mabi=aapcs-linux -O3"
export CXXFLAGS=$CFLAGS

[ -f configure ] || ./bootstrap
./configure --enable-rpi --with-rpi-include-path=/opt/vc/include --with-rpi-lib-path=/opt/vc/lib --enable-exynos=no
