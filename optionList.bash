#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=(
"prod_ror_01" "prod_ror_stage" "prod_web_01" "prod_PHP_01" "prod_web_04"
 "quit")
select opt in "${options[@]}"
done
	case $opt in
		"ror_01") /usr/bin/ssh -i ~/.ssh/AWS-Keys-smg/aaa-key_prod-rorserver1.pem aaa@aaa; break;;
		"ror_stage") /usr/bin/ssh -i ~/.ssh/AWS-Keys-bbb/bbb-key-server1.pem bbb@192.168.1.1; break;;
		"web_01") /usr/bin/ssh -i ~/.ssh/AWS-Keys-smg/ccc-key-server1.pem ccc@192.168.1.1; break;;
		"PHP_01") /usr/bin/ssh ddd@12.168.33.22; break;;
		"web_04") /usr/bin/ssh -i ~/.ssh/AWS-Keys-smg/smg-key_prod-webserver1.pem smg@54.65.55.78; break;;
		"quit") break;;
		*) echo "invalid option";;
	esac
done
