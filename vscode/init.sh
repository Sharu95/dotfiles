install_extensions() {
	while read ext; do
		code --install-extension $ext
	done < extensions.txt
}

copy_settings() {
	VS_SETTINGS=$HOME/.config/Code/User
	cp settings.json $VS_SETTINGS/settings.json
}

install_extensions
copy_settings




