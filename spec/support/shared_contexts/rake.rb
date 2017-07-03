# frozen_string_literal: true

require 'rake'

shared_context 'rake' do
  let(:rake)      { Rake::Application.new }
  let(:task_name) { self.class.top_level_description }
  let(:task_path) { "lib/tasks/#{task_name.split(':').first}" }
  subject         { rake[task_name] }

  def exclude_files
    $LOADED_FEATURES.reject do |file|
      file == File.join(Bestie.root, "#{task_path}.rake").to_s
    end
  end

  before do
    Rake.application = rake
    Rake.application.rake_require(task_path, [Bestie.root], exclude_files)

    Rake::Task.define_task(:environment)
  end
end
