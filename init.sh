sudo ﻿ln -s /home/box/web/etc/nginx.conf  /home/box/web/etc/nginx.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
