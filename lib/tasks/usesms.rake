namespace :usesms do
  desc 'Install API_UseSms'
  task :install do
  	puts "Copiando arquivo....."
  	puts Dir.pwd
    copy_file "../../../config/initialize/API_UseSMS.rb", "config/initialize/API_UseSMS.rb"
  end
end