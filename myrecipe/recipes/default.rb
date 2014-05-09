cookbook_file '/root/test.php' do
  source 'default.php'
  rights :read, 'Everyone'
end
