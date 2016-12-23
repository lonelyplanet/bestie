require 'rails/generators/base'

module RuboCop
  class ConfigGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_default_config
      copy_file '.rubocop.yml', '.rubocop.yml'
    end
  end
end
