execute 'exc_add_repo' do
  command 'add-apt-repository -y ppa:ondrej/php5-oldstable'
end

package 'php5' do
  action :upgrade
end

package 'php-sasl' do
  action :purge
end
