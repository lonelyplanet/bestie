require 'rails/generators/base'

module SimpleCov
  class ConfigGenerator < Rails::Generators::Base
    CONFIG_PATH = File.expand_path('../templates/config.rb', __FILE__)

    def insert_configuration_to_spec_helper
      prepend_file 'spec/spec_helper.rb' do
        File.read(CONFIG_PATH)
      end
    end
  end
end
