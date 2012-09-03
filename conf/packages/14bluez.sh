

PACKAGES+=" dbus"
hset dbus url "http://dbus.freedesktop.org/releases/dbus/dbus-1.6.4.tar.gz"
hset dbus depends "libexpat"

configure-dbus() {
	configure-generic \
		--without-x \
		--enable-xml-docs=no \
		--with-dbus-user=root \
		--with-system-socket=/usr/var/run/dbus/system_bus_socket \
		--enable-doxygen-docs=no
}

deploy-dbus() {
	deploy deploy_binaries
}

PACKAGES+=" bluez"
hset bluez url "http://www.kernel.org/pub/linux/bluetooth/bluez-4.101.tar.gz"
hset bluez depends "dbus libiconv libgettext libglib"

configure-bluez() {
	configure-generic \
		--disable-alsa \
		--disable-audio \
		--disable-bccmd \
		--disable-cups  \
		--disable-dfutool \
		--disable-fortify \
		--disable-gstreamer \
		--disable-hid2hci \
		--disable-pcmcia \
		--disable-pie \
		--disable-usb \
		--enable-datafiles \
		--enable-debug \
		--enable-dund \
		--enable-hidd \
		--enable-input \
		--enable-network \
		--enable-pand \
		--enable-serial \
		--enable-service \
		--enable-tools
}

deploy-bluez() {
	deploy deploy_binaries
}

PACKAGES+=" btscanner"
hset btscanner url "http://www.pentest.co.uk/src/btscanner-2.1.tar.bz2"
hset btscanner depends "bluez libxml2 libncurses"

configure-btscanner() {
	export LDFLAGS="$LDFLAGS_RLINK -lz"
	export ac_cv_func_malloc_0_nonnull=yes
	rm -f configure
	sed -i -e 's|-Wimplicit-function-dec||g' configure.in
	configure-generic 
	export LDFLAGS="$LDFLAGS_BASE"
	unset ac_cv_func_malloc_0_nonnull
}

deploy-btscanner() {
	deploy deploy_binaries
}


PACKAGES+=" cwiid"
hset cwiid url "http://abstrakraft.org/cwiid/downloads/cwiid-0.6.00.tgz"

configure-cwiid() {
	#export LDFLAGS='-lbluetooth -lrt -lpthread'
	autoreconf
	configure-generic \
		--without-python --disable-ldconfig
}

deploy-cwiid() {
	deploy deploy_binaries
#	deploy_staging_path "/etc/cwiid"
}

