start-subdomain() {
	echo -e -n "\n\033[1;93m[\033[0m+\033[1;93m]\033[1;92m Type your custom subdomain : \033[0m"
	read a
	if [ $a ];then
	clear
	python serveo.py -s $a
	fi
	}
	serveo-start() {
		clear
		python serveo.py
		}
	subdomain () {
		echo -e -n "\n\033[1;93m[\033[1;77m+\033[1;93m]\033[1;92m Custome subdomain ? \033[1;91m(\033[0my|N\033[1;91m) \033[97m"
		read a
		case $a in
		y|Y)start-subdomain ;;
		n|N)serveo-start ;;
		*)subdomain
		esac
		}
		subdomain