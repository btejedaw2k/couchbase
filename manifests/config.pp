# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include couchbase::config
class couchbase::config inherits couchbase{
  group { $::couchbase::group_privilages :
    gid => $::couchbase::group_privilages_id,
  }
  user { $::couchbase::user_privilages :
    ensure  => present,
    comment => 'Managed by Puppet',
    home    => '/home/couchbase',
    uid     => $::couchbase::user_privilages_id,
    gid     => $::couchbase::group_privilages_id,
    require => Group[$::couchbase::group_privilages],
  }
  # creating main directory
  file { $::couchbase::config_dir:
    ensure  => directory,
    owner   => $::couchbase::user_privilages,
    group   => $::couchbase::group_privilages,
    require => User[$::couchbase::user_privilages],
  }
}