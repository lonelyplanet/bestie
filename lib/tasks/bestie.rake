# frozen_string_literal: true

load 'tasks/rubocop.rake'
load 'tasks/debride.rake'
load 'tasks/flay.rake'
load 'tasks/reek.rake'
load 'tasks/brakeman.rake'
load 'tasks/fasterer.rake'
load 'tasks/rubycritic.rake'

namespace :bestie do
  task style: %i[
    rubocop
    rubycritic
  ]

  task smell: %i[
    debride
    flay
    reek
  ]

  task security: [
    :brakeman
  ]

  task performance: [
    :fasterer
  ]

  task all: %i[
    style
    smell
    security
    performance
  ]
end

task bestie: ['bestie:all']
