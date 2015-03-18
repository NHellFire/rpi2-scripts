export CFLAGS="-I/opt/vc/include -I/opt/vc/include/interface/vcos/pthreads/ -I/opt/vc/include/interface/vmcs_host/linux -fPIC -pipe -mcpu=cortex-a7 -mtune=cortex-a7 -mfpu=vfp -mfloat-abi=hard -mabi=aapcs-linux"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="-L/opt/vc/lib"

./configure --prefix=/opt/xbmc-bcm --enable-gles --disable-sdl --disable-x11 --disable-xrandr --disable-openmax --disable-optical-drive --disable-dvdcss --disable-joystick --disable-debug --disable-crystalhd --disable-vtbdecoder --disable-vaapi --disable-vdpau --disable-pulse --disable-projectm --with-platform=raspberry-pi --enable-optimizations --enable-libcec --enable-player=omxplayer

