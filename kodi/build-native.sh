export CFLAGS="-I/opt/vc/include -I/opt/vc/include/interface/vcos/pthreads/ -I/opt/vc/include/interface/vmcs_host/linux -fPIC -pipe -mcpu=cortex-a7 -mtune=cortex-a7 -march=armv7ve -mfpu=neon-vfpv4 -mfloat-abi=hard -mabi=aapcs-linux -O3"
export CXXFLAGS="$CFLAGS"

export LD=/usr/bin/ld.gold
export LDFLAGS="-L/opt/vc/lib -Wl,--as-needed"

./configure --prefix=/opt/xbmc-bcm --enable-gles --disable-sdl --disable-x11 --disable-xrandr --disable-openmax --disable-optical-drive --disable-dvdcss --disable-joystick --disable-debug --disable-crystalhd --disable-vtbdecoder --disable-vaapi --disable-vdpau --disable-pulse --disable-projectm --with-platform=raspberry-pi --enable-optimizations --enable-libcec --enable-player=omxplayer

