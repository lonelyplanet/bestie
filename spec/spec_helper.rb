# frozen_string_literal: true

require 'bundler/setup'
require 'byebug'
Bundler.setup

require 'bestie'

require_relative 'support/shared_contexts/rake'

require 'simplecov'

SimpleCov.start do
  add_filter 'config'
  add_filter 'spec'
  add_filter 'vendor'
  coverage_dir 'target/reports/coverage'
  minimum_coverage 100
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
