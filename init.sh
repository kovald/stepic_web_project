# sudo apt-get update
# sudo apt-get install -y nginx
# mkdir -p /home/box/web/public/{img,css,js}
# mkdir -p /home/box/web/{uploads,etc}

sudo pip2 install django==1.7.7
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -fs /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo nginx -t && sudo /etc/init.d/nginx restart
sudo ln -fs /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo unlink /etc/gunicorn.d/django
sudo ln -s /home/box/web/etc/django /etc/gunicorn.d/django
sudo /etc/init.d/gunicorn restart