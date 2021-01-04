bin/magento setup:config:set \
--backend-frontname=admin \
--db-host=db \
--db-name=magento \
--db-user=magento \
--db-password=magento \
--elasticsearch-host=elasticsearch \
--elasticsearch-port=9200

bin/magento setup:install

bin/magento admin:user:create --admin-user='aegona' --admin-password='aegona123' --admin-email='tien.nguyen@aegona.com' --admin-firstname='Tien' --admin-lastname='Nguyen'


php bin/magento module:disable {Magento_Elasticsearch,Magento_InventoryElasticsearch,Magento_Elasticsearch6,Magento_Elasticsearch7}


# bash
docker-compose exec phpfpm bash



# setup
docker-compose exec phpfpm bash

cd /var/www/html

rm -rf generated/code

php bin/magento setup:upgrade

php bin/magento setup:static-content:deploy -f

php bin/magento cache:clean

php bin/magento cache:flush

chmo -R 0777 var/ pub/ generated/