namespace :usesms do
  desc 'Install API_UseSms'
  task :install do
  	puts "Copiando arquivo....."
  	puts File.expand_path(File.dirname(__FILE__))
    copy_file "../../../config/initialize/API_UseSMS.rb", "config/initialize/API_UseSMS.rb"
  end
end