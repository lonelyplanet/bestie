load 'tasks/rubocop.rake'
load 'tasks/reek.rake'
load 'tasks/brakeman.rake'
load 'tasks/fasterer.rake'
load 'tasks/rubycritic.rake'

namespace :bestie do
  task style: [
    :rubocop,
    :rubycritic
  ]

  task smell: [
    :reek
  ]

  task security: [
    :brakeman
  ]

  task performance: [
    :fasterer
  ]

  task all: [
    :style,
    :smell,
    :security,
    :performance
  ]
end

task :bestie => ['bestie:all']
