# frozen_string_literal: true

task :reek do
  require 'reek/rake/task'

  source_files = FileList.new('lib/**/*.rb', 'app/**/*.rb', 'spec/**/*.rb')
  Reek::Rake::Task.new do |t|
    t.fail_on_error = false
    t.source_files  = source_files
  end
end
