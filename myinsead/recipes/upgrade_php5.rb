php_repo = 'ppa:ondrej/php5-oldstable'
# php_repo = 'ppa:ondrej/ppa:ondrej/php5'

execute 'exc_add_repo' do
  command "add-apt-repository -y #{php_repo}"
end

execute 'exc_update_cache' do
  command 'apt-get update -y'
end

package 'php5' do
  action :upgrade
end

package 'php-sasl' do
  action :purge
end

file '/etc/php5/conf.d/sasl.ini' do
  action :delete
end
