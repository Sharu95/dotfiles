install_extensions() {
	while read ext; do
		code --install-extension $ext
	done < extensions.txt
}

copy_settings() {
	VS_SETTINGS=""

	if [[ $1 == "linux" ]]; then
		VS_SETTINGS="$HOME/.config/Code/User"
	elif [[ $1 == "mac" ]]; then
		VS_SETTINGS="$HOME/Library/Application Support/Code"
	else 
		echo "Specify system for settings path"
	fi
	cp settings.json $VS_SETTINGS/settings.json
}

install_extensions
copy_settings $1




