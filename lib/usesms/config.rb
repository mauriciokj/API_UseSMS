require 'usesms'
require 'rails'
module UseSms
  class config < Rails::Railtie
    railtie_name :usesms

    rake_tasks do
      load "tasks/usesms.rake"
    end
  end
end