# frozen_string_literal: true

namespace :brakeman do
  task :run, :output_files do |_, args|
    require 'brakeman'

    files = args[:output_files].split(' ') if args[:output_files]
    Brakeman.run app_path: '.', output_files: files, print_report: true
  end
end

task brakeman: ['brakeman:run']
