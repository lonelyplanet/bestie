# frozen_string_literal: true

require 'spec_helper'

describe 'rubocop' do
  include_context 'rake'

  it 'passes rubocop test' do
    subject.invoke
  end

  describe '#invoke' do
    before do
      allow(RuboCop::RakeTask).to receive(:new)
    end

    it 'initialize a new rubocop rake task' do
      subject.invoke
      expect(RuboCop::RakeTask).to have_received(:new)
    end
  end
end
