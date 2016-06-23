class profile::nginx::params(
  $vhost_name  = 'puppetweb.example.local',
  $vhost_port  = 8000,
  $repo_ensure = latest,
  $repo_home   = '/etc/puppetlabs/puppet/modules/profile/files',
  $repo_name   = 'exercise-webpage',
  $repo_source = 'https://github.com/puppetlabs/exercise-webpage.git'
){}
