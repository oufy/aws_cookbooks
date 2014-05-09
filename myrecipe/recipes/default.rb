cookbook_file '/root/test.txt' do
  source 'default.php'
  rights :read, 'Everyone'
end
