# frozen_string_literal: true

require 'spec_helper'

describe 'debride' do
  include_context 'rake'

  it 'runs debride report' do
    subject.invoke
  end

  describe '#invoke' do
    before do
      allow(Debride).to receive(:run) { double(report: 'foo') }
    end

    it 'invokes run method on Debride' do
      subject.invoke
      expect(Debride).to have_received(:run)
    end
  end
end
