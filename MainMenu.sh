#Universal variables
	correct_access="*247#"
	correct_PIN=$(cat file.txt)
	random=$(( ($RANDOM % 1000) + 1000 ))

send0()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                         Send Money                       |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                    To Bkash Number                    |"
	echo "| 2.                  To non-Bkash Number                  |"
	echo "| 0.                       Main Menu                       |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " Enter choice: "
	read choice1
	case $choice1 in
		1) send1;;
		2) send2;;
		0) main ;;	
		*) send0;
	esac
}

send1()
{
	clear
	echo "Enter the Bkash number: "
	read num;
	echo "Enter amount to transfer: "
	read amount;
	echo "Enter reference: "
	read ref;
	echo "Enter your PIN to confirm: "
	read PIN;
	if [ "$PIN" = "$correct_PIN" ]
	then
		echo "Money Transfer successful"
		echo "Press 0 to go back to main menu, other keys to exit"
		read zero;
		if [ "$zero" = 0 ]
		then main;
		fi
	else 
		echo "Incorrect PIN number"
		pinenter2;	
	fi
}

send2()
{
	clear
	echo "Enter the recipient number: "
	read num;
	echo "Enter amount to transfer: "
	read amount;
	echo "Enter reference: "
	read ref;
	echo "Enter your PIN to confirm: "
	read PIN;
	if [ "$PIN" = "$correct_PIN" ]
	then
		echo "Money Transfer successful"
		echo "Press 0 to go back to main menu, other keys to exit"
		read zero;
		if [ "$zero" = 0 ]
		then main;
		fi
	else 
		echo "Incorrect PIN number"
		pinenter2;	
	fi
}

recharge()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                       Mobile Recharge                    |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                      Grameenphone                     |"
	echo "| 2.                          Robi                         |"
	echo "| 3.                       Banglalink                      |"
	echo "| 4.                         Airtel                        |"
	echo "| 5.                        Teletalk                       |"
	echo "| 0.                          Exit                         |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " Enter choice: "
	read choice2
	case $choice2 in
		1) echo "Enter the Grameenphone number: "
			read num;; 
		2) echo "Enter the Robi number: "
			read num;;
		3) echo "Enter the Banglalink number: "
			read num;;
		4) echo "Enter the Airtel number: "
			read num;;
		5) echo "Enter the Teletalk number: "
			read num;;		
		*) recharge;
	esac
	echo "Enter amount to recharge: "
	read amount;
	echo "Enter your PIN to confirm: "
	read PIN;
	if [ "$PIN" = "$correct_PIN" ]
	then
		echo "Recharge successful"
		echo "Press 0 to go back to main menu, other keys to exit"
		read zero;
		if [ "$zero" = 0 ]
		then main;
		fi
	else 
		echo "Incorrect PIN number"
		pinenter3;	
	fi
}

bill()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                          Pay Bill                        |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                      Electricity                      |"
	echo "| 2.                          Gas                          |"
	echo "| 3.                         Water                         |"
	echo "| 4.             Internet and Telephone Service            |"
	echo "| 5.                   Dish TV Connection                  |"
	echo "| 6.                     NGO Donations                     |"
	echo "| 0.                          Exit                         |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " Enter choice: "
	read choice3
	case $choice3 in
		1) electricity;;
		2) gas;;
		3) water;;
		4) internet;;
		5) tv;;
		6) NGO;;
		0) main ;;	
		*) bill;
	esac
}

electricity()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                       Electricity Bill                   |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                      Palli Bidyut                     |"
	echo "| 2.                         DESCO                         |"
	echo "| 0.                          Exit                         |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " Enter choice: "
	read choice4
	case $choice4 in
		1) clear
		   echo "Input Palli Bidyut meter number: "
	       		read meterno;
	       	   echo "Enter amount of money: "
	       		read amount
	       	   echo "Palli Bidyut electricity bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		2) clear
		   echo "Input DESCO meter number: "
	       		read meterno;
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "DESCO electricity bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		0) bill;;
		*) electricity;   
	esac
}

gas()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                          Gas Bill                        |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                       Titas Gas                       |"
	echo "| 2.                     Karnaphuli Gas                    |"
	echo "| 3.                     Jalalabad Gas                     |"
	echo "| 0.                          Exit                         |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " Enter choice: "
	read choice5
	case $choice5 in
		1) clear
	       	   echo "Enter amount of money: "
	       		read amount
	       	   echo "Titas gas bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		2) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "Karnaphuli gas bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		3) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "Jalalabad gas bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		 0) bill;;
		 *) gas;    
	esac
}

water()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                          Water Bill                      |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                       Dhaka WASA                      |"
	echo "| 2.                     Chittagong WASA                   |"
	echo "| 3.                      Rajshahi WASA                    |"
	echo "| 4.                       Khulna WASA                     |"
	echo "| 0.                          Exit                         |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " Enter choice: "
	read choice6
	case $choice6 in
		1) clear
	       	   echo "Enter amount of money: "
	       		read amount
	       	   echo "Dhaka WASA water bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		2) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "Chittagong WASA water bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		3) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "Rajhshahi WASA water bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		4) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "Khulna WASA water bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;; 
		
		0) bill;;
		*) water;        
	esac
}

internet()
{
	clear
	echo "------------------------------------------------------------"
	echo "|            Internet and Telephone Services Bill          |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                          BTCL                         |"
	echo "| 2.                         Link3                         |"
	echo "| 3.                     Circle Network                    |"
	echo "| 0.                          Exit                         |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " Enter choice: "
	read choice7
	case $choice7 in
		1) clear
	       	   echo "Enter amount of money: "
	       		read amount
	       	   echo "BTCL internet bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		2) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "Link3 internet bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		3) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "Circle Network internet bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		0) bill;;
		*) internet;   
	esac
}

tv()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                    Dish TV Connection Bill               |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                       WM Digital                      |"
	echo "| 2.                       Akash DTH                       |"
	echo "| 3.                     Circle Network                    |"
	echo "| 0.                          Exit                         |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " Enter choice: "
	read choice8
	case $choice8 in
		1) clear
	       	   echo "Enter amount of money: "
	       		read amount
	       	   echo "WM Digital dish tv bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		2) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "Akash DTH dish tv bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		3) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "Circle Network dish tv bill: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;  
		  
		0) bill;;
		*) tv;   
	esac
}

NGO()
{
	clear
	echo "------------------------------------------------------------"
	echo "|            Non-Government Organisation Donations         |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                  Bidyanondo Foundation                |"
	echo "| 2.                  ActionAid Bangladesh                 |"
	echo "| 3.                   Shakti Foundation                   |"
	echo "| 4.                   JAAGO Foundation                    |"
	echo "| 0.                          Exit                         |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " Enter choice: "
	read choice9
	case $choice9 in
		1) clear
	       	   echo "Enter amount of money: "
	       		read amount
	       	   echo "Bidyanondo Foundation donation: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		   
		2) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "ActionAid Bangladesh donation: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;
		3) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "Shakti Foundation donation: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;  
		   
		4) clear
	       	   echo "Enter amount of money: "
	       		read amount;
	       	   echo "JAAGO Foundation donation: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Bill payment successful"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter4;	
		   fi
		   ;;   
		  
		0) bill;;
		*) tv;   
	esac
}

cashout()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                        Cashout Menu                      |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                      From agent                       |"
	echo "| 2.                       From ATM                        |"
	echo "| 0.                         Exit                          |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " "
	echo " Enter Choice: "
	read choice10
	case $choice10 in
		1) agent;;
		2) ATM;;
		0) main;;
		*) cashout;
	esac
}

agent()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                        Cashout Menu                      |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                        General                        |"
	echo "| 2.                      Priyo agent                      |"
	echo "| 0.                         Exit                          |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " "
	echo " Enter Choice: "
	read choice11
	case $choice11 in
		1) echo "Enter Agent bKash account number: "
			read agentnum;
		   echo "Enter amount to cash out: "
		       	read amount;
		   echo "Cash out from $agentnum amount: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Transfer successful, please collect your cash from agent"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter5;	
		   fi
		   ;;
		   
		2) echo "Enter Agent priyo Number: "
			read agentnum;
		   echo "Enter amount to cash out: "
		       	read amount;
		   echo "Cash out from priyo number $agentnum amount: $amount"
		   echo "Enter your PIN to confirm: "
			read PIN;
		   if [ "$PIN" = "$correct_PIN" ]
		   then
			echo "Transfer successful, please collect your cash from agent"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
		   else 
			echo "Incorrect PIN number"
		       	pinenter5;	
		   fi
		   ;;
		0) cashout;;
		*) agent;
	esac
}

account()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                      My Bkash Account                    |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                      See Details                      |"
	echo "| 2.                      Change PIN                       |"
	echo "| 0.                         Exit                          |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " "
	echo " Enter Choice: "
	read choice12
	case $choice12 in
		1) details;;
		2) resetPIN;;
		0) main;;
		*) account;
	esac
}

details()
{
	bal="$random"
	clear
	sleep 1
	echo "------------------------------------------------------------"
	echo "|                       Account Details                    |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	sleep 1
	echo "| Account username: Md. Shams Kadir Khan                   |"
	echo "|                                                          |"
	sleep 1
	echo "| Current Balance : $bal Taka                              |"
	echo "|                                                          |"
	sleep 1
	echo "| Current PIN     : $correct_PIN                                   |"
	echo "|                                                          |"
	sleep 1
	echo "| Account operations:                                      |"
	echo "| 1.                      Send money                       |"
	echo "| 2.                    Mobile recharge                    |"
	echo "| 3.                     Bill Payment                      |"
	echo "| 4.                       Cashout                         |"
	echo "| 5.                   My Bkash account                    |"
	echo "| 6.                      Reset PIN                        |"
	echo "| 0.                         Exit                          |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " "
	echo " Enter Choice: "
	read choice13
	case $choice13 in
		1) send0 ;;
		2) recharge ;;
		3) bill ;;
		4) cashout ;;
		5) account ;;
		6) resetPIN ;;
		0) main;;
		*) account;
	esac
}

resetPIN()
{
	clear
	echo "Enter your current PIN: "
	read curr_pin;
	if [ "$curr_pin" = "$correct_PIN" ]
	then
		echo "Enter new PIN: "
		read new_PIN;
		echo "Confirm new PIN: "
		read new_PIN2;
		if [ "$new_PIN" = "$new_PIN2" ]
		then
			echo "$new_PIN" > new_file.txt
			rm file.txt
			mv new_file.txt file.txt
			echo "PIN updated"
			echo "Press 0 to go back to main menu, other keys to exit"
			read zero;
			if [ "$zero" = 0 ]
			then main;
			fi
			
		else
			echo "please confirm your PIN"
			resetPIN;
		fi	
	else
		echo "Wrong PIN, please check the PIN properly"
		resetPIN;
	fi				
}

main()
{
	clear
	echo "------------------------------------------------------------"
	echo "|                          Main Menu                       |"
	echo "------------------------------------------------------------"
	echo "|                                                          |"
	echo "| 1.                      Send money                       |"
	echo "| 2.                    Mobile recharge                    |"
	echo "| 3.                     Bill Payment                      |"
	echo "| 4.                       Cashout                         |"
	echo "| 5.                   My Bkash account                    |"
	echo "| 6.                      Reset PIN                        |"
	echo "| 0.                         Exit                          |"
	echo "|                                                          |"
	echo "------------------------------------------------------------"
	echo " "
	echo " Enter Choice: "
	read choice0
	case $choice0 in
		1) send0 ;;
		2) recharge ;;
		3) bill ;;
		4) cashout ;;
		5) account ;;
		6) resetPIN ;;
		0) echo "Exited the process. Thank you for using our program" ;;
		*) main;
	esac
}

start()
{
	clear;
	read access
	if [ "$access" = "$correct_access" ]
	then
		pinenter;
	else
		start;	
	fi	
}

pinenter()
{
	echo "Enter PIN number: "
	read PIN
	if [ "$PIN" = "$correct_PIN" ]
	then main;
	else pinenter;
	fi	
}

pinenter2()
{
	echo "Enter PIN number: "
	read PIN
	if [ "$PIN" = "$correct_PIN" ]
	then echo "Money Transfer successful"
	echo "Press 0 to go back to main menu, other keys to exit"
		read zero;
		if [ "$zero" = 0 ]
		then main;
		fi
	else pinenter2;
	fi	
}

pinenter3()
{
	echo "Enter PIN number: "
	read PIN
	if [ "$PIN" = "$correct_PIN" ]
	then echo "Recharge successful";
	echo "Press 0 to go back to main menu, other keys to exit"
		read zero;
		if [ "$zero" = 0 ]
		then main;
		fi
	else pinenter3;
	fi	
}

pinenter4()
{
	echo "Enter PIN number: "
	read PIN
	if [ "$PIN" = "$correct_PIN" ]
	then 
	echo "Bill payment successful";
	echo "Press 0 to go back to main menu, other keys to exit"
		read zero;
		if [ "$zero" = 0 ]
		then main;
		fi
	else pinenter4;
	fi	
}

pinenter5()
{
	echo "Enter PIN number: "
	read PIN
	if [ "$PIN" = "$correct_PIN" ]
	then 
	echo "Transfer successful, please collect your cash from agent";
	echo "Press 0 to go back to main menu, other keys to exit"
		read zero;
		if [ "$zero" = 0 ]
		then main;
		fi
	else pinenter5;
	fi	
}

start;
	
