namespace :usesms do
  desc 'Install API_UseSms'
  task :install do
  	puts "Copiando arquivo....."
  	file = File.join(a,'../../', 'config/', 'initialize/', 'API_UseSMS.rb')
    copy_file file, "config/initialize/API_UseSMS.rb"
  end
end