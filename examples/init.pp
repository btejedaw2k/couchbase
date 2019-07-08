# test couchbase class
class { 'couchbase' :
  version             => '6.0.0',
  package_ensure      => 'present',
  package_name        => 'couchbase-server',
  config_dir          => '/opt/couchbase',
  source_installer    => '/tmp',
  package_provider    => 'rpm',
  user_privilages     => 'couchbase',
  group_privilages    => 'couchbase',
  user_privilages_id  => '9999',
  group_privilages_id => '9999',
}