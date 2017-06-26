# frozen_string_literal: true

task :flay do
  require 'flay'

  ARGV.clear
  Flay.run.report
end
