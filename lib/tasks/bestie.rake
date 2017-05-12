load 'tasks/rubocop.rake'
load 'tasks/reek.rake'
load 'tasks/brakeman.rake'

task bestie: [
  :rubocop,
  :reek,
  'brakeman:run'
]
