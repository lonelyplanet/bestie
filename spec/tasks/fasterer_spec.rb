# frozen_string_literal: true

require 'spec_helper'

describe 'fasterer' do
  include_context 'rake'

  it 'passes fasterer test' do
    subject.invoke
  end

  describe '#invoke' do
    let(:file_traverser) { double(traverse: true) }
    before do
      allow(Fasterer::FileTraverser).to receive(:new) { file_traverser }
    end

    it 'traverses through the files' do
      subject.invoke
      expect(file_traverser).to have_received(:traverse)
    end
  end
end
