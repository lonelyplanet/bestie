require 'simplecov'

SimpleCov.start do
  add_filter 'config'
  add_filter 'spec'
  add_filter 'vendor'
  coverage_dir 'target/reports/coverage'
  minimum_coverage 100
end

# End of SimpleCov cofniguration
