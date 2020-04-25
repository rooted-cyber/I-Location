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
		ngrok_run () {
			cd ~/seeker-2
			if [ -e ngrok ];then
			chmod 700 ngrok
			killall -2 ngrok > /dev/null 2>&1
			./ngrok http 8080 > /dev/null 2>&1 &
			else
			printf "\n\033[91m [?] ngrok not found\n\n"
			printf "\033[92m [+] Downloading ngrok......\n\n"
			wget https://github.com/rooted-cyber/upload/raw/master/ngrok.zip > /dev/null 2>&1
			unzip ngrok.zip > /dev/null 2>&1
			chmod 700 ngrok
			rm -f ngrok.zip
			killall -2 ngrok > /dev/null 2>&1
			./ngrok http 8080 > /dev/null 2>&1 &
			fi
			}
		ngrok-server () {
			cd ~/seeker-2
			ngrok_run
			cd ~/seeker-2
			python3 seeker.py --tunnel manual --subdomain zomato
			}
			link () {
				link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
				printf "\e[1;92m[\e[0m*\e[1;92m] Your link:\e[0m\e[1;77m %s\e[0m\n" $link
				printf "\n"
				}
				sett () {
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
apt install php
	setup
	bash termux*
	clear
	printf "\n\n \033[96m [+] Creating shortcut...."
	sleep 2
	echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/seeker
	echo "cd ~/seeker-2" >> /$PREFIX/bin/seeker
	echo "bash seeker.sh" >> $PREFIX/bin/seeker
	chmod 777 $PREFIX/bin/seeker
	printf "\n\n Now you can use this command :- seeker\n"
	printf "\n\n Press enter to start\n\n"
	read
	menu
	fi
	}
	fool () {
		clear
		printf "\n\n\033[91m You are totally mad.\n\nFirst learn basic and install seeker-2 \n\n"
		printf "\033[92m Follow my instruction to install seeker-2:-\n\n"
		printf " First open Termux
Then type this command :-
		
$ apt update
$ apt uugrade
$ apt install git
$ cd $?ŒHOME
$ git clone https://github.com/rooted-cyber/seeker-2
$ cd seeker-2
$ bash seeker.sh
		 
And wait for setuping and starting command :-
		 seeker"
		 }
	
	
	clear
	echo
	check () {
		cd $PREFIX/bin
		if [ -e lolcat ];then
		echo
		else
		apt install python
		pip install lolcat
		fi
		}
		check2 () {
			cd ~/seeker-2
			if [ -e seeker.py ];then
			echo
			else
			unzip .seeker.zip
			fi
			}
			menu () {
			check
			check2
		clear
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
	}
	cd ~
	if [ -e seeker-2 ];then
	sett
	else
	fool
	fi
	
