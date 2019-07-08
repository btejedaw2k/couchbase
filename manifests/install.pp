# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include couchbase::install
class couchbase::install inherits couchbase {
  # default variables
  $package_path = "${::operatingsystem}/${::operatingsystemmajrelease}/${::couchbase::package_name}-${::couchbase::version}"
  # install package
  package { $::couchbase::package_name :
    ensure   => present,
    source   => "${::couchbase::source_installer}/${package_path}.${::couchbase::package_provider}",
    provider => $::couchbase::package_provider,
  }
}
