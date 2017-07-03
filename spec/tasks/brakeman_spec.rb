# frozen_string_literal: true

require 'spec_helper'
require 'brakeman'

describe 'brakeman:run' do
  include_context 'rake'

  before do
    allow(Brakeman).to receive(:run)
  end

  it 'runs brakeman' do
    subject.invoke
    expect(Brakeman).to have_received(:run)
  end
end
