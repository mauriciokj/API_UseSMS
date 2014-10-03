require 'api_usesms'
require 'rails'
module UseSms
  class Railtie < Rails::Railtie
    railtie_name :usesms

    rake_tasks do
      load "tasks/usesms.rake"
    end
  end
end