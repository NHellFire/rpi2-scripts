export CFLAGS="-I/opt/vc/include -I/optvc/include/interface/vcos/pthreads/ -I/opt/vc/include/interface/vmcs_host/linux -fPIC -pipe -mcpu=cortex-a7 -mtune=cortex-a7 -march=armv7ve -mfpu=neon-vfpv4 -mfloat-abi=hard -mabi=aapcs-linux -O3"
export CXXFLAGS="$CFLAGS"

export LDFLAGS="-L/opt/vc/lib -Wl,--as-needed"

# gold linker
export LDFLAGS="$LDFLAGS -L/usr/local/lib"
export CFLAGS="$CFLAGS -fuse-ld=gold"
export CXXFLAGS="$CXXFLAGS -fuse-ld=gold"

export FFMPEG_OPTS="--cpu=armv7ve"
if [ ! -f configure ] || ! grep -qF 'FFMPEG_OPTS="${FFMPEG_OPTS} -r"' configure.in; then
	echo "Renegerating configure..."

	sed -i -e 's/FFMPEG_OPTS="-r"/FFMPEG_OPTS="${FFMPEG_OPTS} -r"/' configure.in
	./bootstrap
fi


./configure --prefix=/opt/xbmc-bcm --enable-gles --disable-sdl --disable-x11 --disable-xrandr --disable-openmax --disable-optical-drive --disable-dvdcss --disable-joystick --disable-debug --disable-crystalhd --disable-vtbdecoder --disable-vaapi --disable-vdpau --disable-pulse --disable-projectm --with-platform=raspberry-pi --enable-optimizations --enable-libcec --enable-player=omxplayer

