# Failed SSH Attempth Alert

This bash script is for notice the users against failed SSH attempts.

## Required / Optional Functions

It's better you have a Google Chat space and a Webhook. 

Copy the Webhook and paste it `failed_ssh_attempt.sh` script's third line.

Also, root access is needed for creating a systemd service.

Make sure you are in the same directory with `failed_ssh_attempt.service` file.
Then, run this commands: 
`sudo cp failed_ssh_attempt.service /etc/systemd/system/failed_ssh_attempt.service`
`sudo systemctl daemon-reload`
`sudo systemctl enable failed_ssh_attempt.service`

Make sure the service has started:
`sudo systemctl status failed_ssh_attempt.service`

## Usage / Test

Open a new terminal,
Run this command:
`ssh _your_hostname_@_your_local_ip_address`

Then, do not type the correct password.

If you get the notifications, the service is running perfectly.

## License
[MIT](https://choosealicense.com/licenses/mit/)