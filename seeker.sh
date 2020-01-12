logo () {
	toilet -f mono12 -F metal Seeker
	echo
	}
	setup () {
		cd ~/seeker-2
		if [ -e seeker.py ];then
		echo
		else
		unzip .seeker.zip
		fi
		}
		ngrok-server () {
			cd ~/seeker-2
			python3 seeker.py --tunnel manual --subdomain zomato
			}
			link () {
				link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
				printf "\e[1;92m[\e[0m*\e[1;92m] Your link:\e[0m\e[1;77m %s\e[0m\n" $link
				printf "\n"
				}


			
	cd $PREFIX/bin
	if [ -e seeker ];then
	echo
	else
	printf "\n\n \033[92m [*] Requirements installing....\n\n"
	sleep 1
	apt update
	apt upgrade
	apt install toilet
	apt install python
	apt install wget
	pip install lolcat
	setup
	bash termux*
	clear
	printf "\n\n \033[96m [+] Creating shortcut...."
	sleep 2
	echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/seeker
	echo "cd seeker-2" >> /$PREFIX/bin/seeker
	echo "bash seeker.sh" >> $PREFIX/bin/seeker
	chmod 777 $PREFIX/bin/seeker
	printf "\n\n Now you can use this command :- seeker\n"
	printf "\n\n Press enter to start\n\n"
	read
	fi
	clear
	echo
	logo
	printf "	[1] Ngrok\n"|lolcat --animate
	printf "	[2] Serveo\n"|lolcat --animate
	#printf "	[3] Ngrok link\n\n\n"|lolcat --animate
	printf "	[3] Exit\n\n\n"|lolcat --animate
	echo -e -n "\033[93mseeker\033[94m@\033[91m(\033[96mtool\033[91m)\033[95m --> "
	read s
	case $s in
	1)ngrok-server ;;
	2)python3 seeker.py ;;
	3)link ;;
	4)exit ;;
	*)seeker ;;
	esac