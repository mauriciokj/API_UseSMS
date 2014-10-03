namespace :usesms do
  desc 'Install API_UseSms'
  task :install do
  	puts "Copiando arquivo....."
  	file = File.join(File.expand_path(File.dirname(__FILE__)),'../../', 'config/', 'initialize/', 'API_UseSMS.rb')
    copy_file file, "config/initialize/API_UseSMS.rb"
  end
end