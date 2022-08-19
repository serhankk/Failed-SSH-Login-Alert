#!/usr/bin/bash

# WEBHOOK="_your_google_chat_webhook_here_"

while true
do
last_line=$(tail -n -1 /var/log/auth.log | grep "Failed password")
sleep 5

second_last_line=$(tail -n -1 /var/log/auth.log | grep "Failed password")

if [ "$last_line" == "$second_last_line" ]; then
   : 
else
	wall "FAILED SSH LOGIN ATTEMPT ALERT!!! $second_last_line"
	curl -d "{'text': '$second_last_line'}" -H 'Content-Type: application/json' -H 'charset: UTF-8' -X POST "$WEBHOOK"
fi
done
