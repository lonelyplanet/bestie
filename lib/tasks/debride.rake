# frozen_string_literal: true

task :debride do
  require 'debride'

  Debride.run(['lib']).report
end
