#variables
dateandtime="test_$(date +"%F %T")"
read -p 'resource-group name : ' rsgroupname
read -p 'WAF Policy name: ' wafpolicyname
# resourcegroupname="rahul-temp"
# policyname='rahul-test-wafpolicy'
echo $rsgroupname
commandexec=`az network application-gateway waf-policy managed-rule rule-set add --policy-name $wafpolicyname -g $rsgroupname --type OWASP --version 3.2 --group-name REQUEST-942-APPLICATION-ATTACK-SQLI --rules 942130`
echo $commandexec
echo $commandexec > $rahulwafpolicy$dateandtime