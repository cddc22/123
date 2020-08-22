#!/bin/bash
        ls
# Commands to run before starting the bot:
# Check your logs on heroku to see if you were sucessfull
#rm config,js
#wget --no-check-certificate -q $CONFIG_URL
echo "NOTICE: startup.sh is runnning and confing"
sed -i "s/10/66/g" config.js
sed -i "s/6600/1000/g" config.js
sed -i "s/bot_token/$BOT_TOKEN/g" config.js 
sed -i "s/your_tg_userid/$USER_ID/g" config.js 
sed -i "s/tg_whitelist/$USER_NAME/g" config.js
sed -i "s/'DEFAULT_TARGET'/'$TEAM_DRIVE_ID'/g" config.js
#node clear-db.js
wget --no-check-certificate -q $BMURL
node bookmark.js import bm.json
#cat config.js
wget --no-check-certificate -q $SA_ZIP_URL
unzip -qq sa.zip -d ./ 
#ls -l sa.zip
ls
