VIRTUAL_ENV_FOLDER=$HOME/Documents/environments
# Starts Python virtual environments
start () {
	if [[ $# == 0 ]]; then
		echo "Specify env folder"
	else
		found_env=$(find $VIRTUAL_ENV_FOLDER -maxdepth 1 -type d -name $1)

		if [[ $found_env == "" ]]; then 
			if [[ $# < 2 ]]; then 
				echo "Python version?"
				return 
			fi
			found_env=$VIRTUAL_ENV_FOLDER/$1
			virtualenv --python=$2 $found_env
		fi 
		source "${found_env}/bin/activate"	
	fi

}