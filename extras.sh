#!bin/sh

# put your commands to install extra shit below:
# Check your logs on heroku to see if you were sucessfull
git clone https://github.com/dissipator/gd-utils.git her

cd her

npm install --unsafe-perm=true --allow
npm config set unsafe-perm=true
rm -rf node_module
npm i
#npm install -g node-gyp 
npm config set python
npm i pm2 -g

sed -i "s/10/222/g" config.js
sed -i "s/33300/1000/g" config.js

#ls
cat config.js


ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
