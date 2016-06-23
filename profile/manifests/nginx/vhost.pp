class profile::nginx::vhost inherits profile::nginx::params {
  class {'nginx': }
  require profile::nginx::config

  nginx::resource::vhost {"${vhost_name}":
    ensure      => present,
    listen_port => "${vhost_port}",
    www_root    => "/var/www/${vhost_name}",
    index_files => ['index.html'],
  }
}
