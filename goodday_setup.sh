#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "0 */2 * * * export DISPLAY=:0 && google-chrome http://goodday.work" >> mycron
#install new cron file
crontab mycron
rm mycron
