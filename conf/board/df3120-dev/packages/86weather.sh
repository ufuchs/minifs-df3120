
PACKAGES+=" sdlweather"
hset sdlweather url "git!https://github.com/ufuchs/weather-on-df3120.git#sdlweather.bz2"
hset sdlweather git_branch "-b refactoring-sdlweather"
hset sdlweather depends "libsdl libsdlimage libsdlttf"

install-sdlweather() {
	cp sdlweather "$STAGING_USR"/bin/sdlweather
	cp -r {fonts,icons} "$STAGING_USR"/share
	log_install echo Done
}

deploy-sdlweather() {
	deploy cp "$STAGING_USR"/bin/sdlweather "$ROOTFS"/usr/bin
	deploy cp -r "$STAGING_USR"/share/fonts "$ROOTFS"/usr/share
	deploy cp -r "$STAGING_USR"/share/icons "$ROOTFS"/usr/share
}
