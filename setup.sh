#!/usr/bin/env sh


# Host + Port parameters required for setting up the WordPress site
Host=${1?Host required}
Port=${2?Port required}


# Wait until WordPress container became ready
# See also https://github.com/wp-cli/wp-cli/issues/4106 .
until sleep 2s ; docker-compose exec wordpress \
  sudo -u www-data \
    wp db check > /dev/null
do
  echo "Waiting for WordPress container becoming ready..."
done
echo "WordPress container ready."

# Finish installation
docker-compose exec wordpress \
  sudo -u www-data \
    wp core install \
      --skip-email \
      --path=/var/www/html \
      --url=$Host:$Port \
      --title="Example site" \
      --admin_user=admin \
      --admin_password="test" \
      --admin_email=info@example.com

echo "Setup completed, you should now be able to visit the example site on  http://$Host:$Port".
