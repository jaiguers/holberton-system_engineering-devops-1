#This script containg commands to automatically configure an Ubuntu machine to respect above requirements
exec { 'install_nginx_puppet':
  command  => "sudo apt-get -y update && sudo apt-get -y install nginx && echo 'Holberton School' > /var/www/html/index.nginx-debian.html && sudo sed -i '/listen 80 default_server;/a\\\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;' /etc/nginx/sites-enabled/default && sudo service nginx start",
  provider => "shell",
}
