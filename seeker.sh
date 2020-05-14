trap 'printf "\n";stop' 2
fol() {
	cd ~/seeker-2
	}
	R () {
		if [ -e $PREFIX/bin/python ];then
		fol
		python .random.py
		else
		pkg install python
		fol
		python .random.py
		fi
		}


stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}
logo () {
	toilet -f mono12 -F metal Seeker
	echo
	}
	setup () {
		cd ~/seeker-2
		if [ -e serveo.py ];then
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
			wget https://github.com/rooted-cyber/upload/raw/master/ngrok.zip
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
			python3 ngrok.py --tunnel manual --subdomain zomato
			}
			ng-se() {
				ngrok_run
				cd ~/seeker-2
				python3 ngrok.py
				}
			link () {
				link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
				printf "\e[1;92m[\e[0m*\e[1;92m] Your link:\e[0m\e[1;77m %s\e[0m\n" $link
				printf "\n"
				}
				sett () {
cd $PREFIX/bin
if [ -e seeker ];then
	menu
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
	apt install openssh
	setup
	bash install.sh
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
$ cd $?�HOME
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
			if [ -e serveo.py ];then
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
		R
	printf "	[1] Ngrok\n"
	R
	printf "	[2] Serveo\n"
	R
	printf "	[3] Ngrok and serveo \n"
	R
	#printf "	[3] Ngrok link\n\n\n"|lolcat --animate
	printf "	[4] Exit\n\n\n"|lolcat --animate
	echo -e -n "\033[93mseeker\033[94m@\033[91m(\033[96mtool\033[91m)\033[95m --> "
	read s
	case $s in
	1)ngrok-server ;;
	2)python3 ~/seeker-2/serveo.py ;;
	3)ng-se ;;
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
	
