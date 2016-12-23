load 'tasks/rubocop.rake'
load 'tasks/reek.rake'
load 'tasks/brakeman.rake'

namespace :spp do
  task quality: [
    :rubocop,
    :reek,
    'brakeman:run'
  ]

  task ci: [
    :spec,
    :quality,
    :cucumber
  ]
end
