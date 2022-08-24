# #!/bin/sh
# echo "script will disable the managed rule"

# #variables
# rulegrpname='REQUEST-942-APPLICATION-ATTACK-SQLI'
# rulesid='942130'
# read -p 'resource-group name : ' rsgname
# read -p 'WAF policy name : ' wafpolicyname


# #command to disable the rule
# az network application-gateway waf-policy managed-rule rule-set add \ 
# --policy-name $wafpolicyname \
#  -g  $rsgname \
#  --type OWASP \
#  --version 3.1 \
#  --group-name $rulegrpname --rules $rulesid

#variables
dateandtime="test_$(date +"%F %T")"
read -p 'resource-group name : ' rsgroupname
read -p 'WAF Policy name: ' rahulwafpolicy
resourcegroupname="rahul-temp"
policyname='rahul-test-wafpolicy'
echo $rsgroupname
commandexec=`az network application-gateway waf-policy managed-rule rule-set add --policy-name $rahulwafpolicy -g $resourcegroupname --type OWASP --version 3.2 --group-name REQUEST-942-APPLICATION-ATTACK-SQLI --rules 942130`
echo $commandexec
echo $commandexec > $rahulwafpolicy$dateandtime