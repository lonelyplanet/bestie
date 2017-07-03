# frozen_string_literal: true

require 'spec_helper'

describe 'rubycritic' do
  include_context 'rake'

  it 'runs rubycritic report' do
    subject.invoke
  end
end
