class role::puppetweb{
  class{'profile::nginx::config':} 
  ~> class{'profile::nginx::vhost':}
}
