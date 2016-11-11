require 'reek/rake/task'

Reek::Rake::Task.new do |t|
  t.fail_on_error = false # default to true, remove this line will fail test when CodeSmell
  t.source_files  = FileList.new('lib/**/*.rb', 'app/**/*.rb', 'spec/**/*.rb')
end
