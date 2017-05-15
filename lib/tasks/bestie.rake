load 'tasks/rubocop.rake'
load 'tasks/reek.rake'
load 'tasks/brakeman.rake'
load 'tasks/fasterer.rake'

task bestie: [
  :rubocop,
  :reek,
  :fasterer,
  'brakeman:run'
]
