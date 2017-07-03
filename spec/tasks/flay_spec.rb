# frozen_string_literal: true

require 'spec_helper'

describe 'flay' do
  include_context 'rake'

  it 'runs flay report' do
    subject.invoke
  end

  describe '#invoke' do
    before do
      allow(Flay).to receive(:run) { double(report: 'foo') }
    end

    it 'invokes run method on flay' do
      subject.invoke
      expect(Flay).to have_received(:run)
    end
  end
end
