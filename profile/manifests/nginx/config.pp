class profile::nginx::config inherits profile::nginx::params {
  package{'git': 
    ensure => installed,
  }

  file {["/var","/var/www","/var/www/${vhost_name}"]:
    ensure => directory,
  }

  vcsrepo {"${repo_home}/${repo_name}": 
    ensure   => latest,
    provider => git,
    source   => "${repo_source}",
    revision => master,
  }
  
  file {"/var/www/${vhost_name}/index.html":
    ensure => file,
    source => "puppet:///modules/profile/exercise-webpage/index.html",
  }

}
