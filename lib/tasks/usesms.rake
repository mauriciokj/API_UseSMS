namespace :usesms do
  desc 'Install API_UseSms'
  task :install do
  	puts "Copiando arquivo....."
  	from = File.join(File.expand_path(File.dirname(__FILE__)),'../../', 'config/', 'initialize/', 'API_UseSMS.rb')
  	to = File.join(File.pwd,'../../', 'config/', 'initialize/', 'API_UseSMS.rb')

  	puts "from #{from}"
  	puts "to #{to}"
    copy_file from, to
  end
end