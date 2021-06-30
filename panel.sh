rm -rf /jd/panel/
wget -c https://raw.githubusercontent.com/Anylines/panel/main/panel_fix.gz
tar -zxvf panel_fix.gz
pm2 stop server
pm2 start /jd/panel/server.js
echo -e "默认http端口号为5678，如果你做了映射，请使用实际映射的端口进行访问。
默认用户名admin，密码adminadmin。
！！！如果面板没有自启，请进入容器运行pm2 start /jd/panel/server.js启动面板！！！"
