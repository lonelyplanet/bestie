# frozen_string_literal: true

require 'spec_helper'

describe 'bestie:style' do
  include_context 'rake'

  it 'runs rubocop and rubycritic' do
    expect(subject.prerequisites).to eq %w[rubocop rubycritic]
  end
end

describe 'bestie:smell' do
  include_context 'rake'

  it 'runs reek' do
    expect(subject.prerequisites).to eq %w[debride flay reek]
  end
end

describe 'bestie:security' do
  include_context 'rake'

  it 'runs brakeman' do
    expect(subject.prerequisites).to eq ['brakeman']
  end
end

describe 'bestie:performance' do
  include_context 'rake'

  it 'runs fasterer' do
    expect(subject.prerequisites).to eq ['fasterer']
  end
end

describe 'bestie:all' do
  include_context 'rake'

  it 'runs style, smell, security and performance' do
    expect(subject.prerequisites).to eq %w[
      style
      smell
      security
      performance
    ]
  end
end

describe 'bestie' do
  include_context 'rake'

  it 'runs bestie:all' do
    expect(subject.prerequisites).to eq ['bestie:all']
  end
end
