namespace :usesms do
  desc 'Install API_UseSms'
  task :install do
  	puts "Copiando arquivo....."
  	from = File.join(File.expand_path(File.dirname(__FILE__)),'../../', 'config/', 'initializers/', 'API_UseSMS.rb')
  	to = File.join(Dir.pwd, 'config/', 'initializers/', 'API_UseSMS.rb')
    copy_file from, to
  end
end