# frozen_string_literal: true

require 'spec_helper'

describe 'reek' do
  include_context 'rake'

  it 'passes reek test' do
    subject.invoke
  end

  describe '#invoke' do
    let(:task) { double(:fail_on_error= => nil, :source_files= => nil) }
    before do
      allow(Reek::Rake::Task).to receive(:new).and_yield(task)
      allow(FileList).to receive(:new)
      subject.invoke
    end

    it 'initialize a new Reek rake task' do
      expect(Reek::Rake::Task).to have_received(:new)
    end

    it 'gathers files list in desire folders' do
      expect(FileList).to have_received(:new).with(
        'lib/**/*.rb', 'app/**/*.rb', 'spec/**/*.rb'
      )
    end

    it 'sets fail_on_error' do
      expect(task).to have_received(:fail_on_error=)
    end
  end
end
