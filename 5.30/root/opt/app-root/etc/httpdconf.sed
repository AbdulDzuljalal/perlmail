s/^Listen 80/Listen 0.0.0.0:8080/
s/^User apache/User default/
s/^Group apache/Group root/
s%^DocumentRoot "/opt/rh/httpd24/root/var/www/html"%DocumentRoot "/opt/app-root/src"%
s%^<Directory "/opt/rh/httpd24/root/var/html"%<Directory "/opt/app-root/src"%
s%^ErrorLog "logs/error_log"%ErrorLog "|/usr/bin/cat"%
s%CustomLog "logs/access_log"%CustomLog "|/usr/bin/cat"%
