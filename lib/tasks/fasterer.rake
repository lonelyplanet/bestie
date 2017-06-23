# frozen_string_literal: true

require 'fasterer/file_traverser'

task :fasterer do
  file_traverser = Fasterer::FileTraverser.new('.')
  file_traverser.traverse
  # abort if file_traverser.offenses_found?
end
