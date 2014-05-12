directory 'my_insead_conf_dir' do
  path '/etc/apache2/sites-available/myinsead.conf.d'
  action :create
  mode '755'
  owner 'root'
  group 'root'
end

template 'local_directory_config_file' do
  path '/etc/apache2/sites-available/myinsead.conf.d/local_directories.conf'
  action :create_if_missing
  source 'local_directories.conf.erb'
  mode '644'
  owner 'root'
  group 'root'
end
