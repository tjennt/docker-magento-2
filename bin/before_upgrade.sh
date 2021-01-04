docker-compose exec phpfpm bash

cd /var/www/html

php bin/magento cache:flush

php bin/magento