namespace :usesms do
  desc 'Install API_UseSms'
  task :install do
    source = File.join(Gem.loaded_specs["API_UseSms"].full_gem_path, "config", "initialize" , "API_UseSMS.rb")
    target = File.join(Rails.root,  "config", "initialize" , "API_UseSMS.rb")
    FileUtils.cp_r source, target
  end
end