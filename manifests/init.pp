# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include couchbase
class couchbase(
  Optional[Pattern[/latest|^[.+_0-9:~-]+$/]] $version,
  Enum['present','absent'] $package_ensure,
  String $package_name,
  String $config_dir,
  String $source_installer,
  String $package_provider,
  String $user_privilages,
  String $user_privilages_id,
  String $group_privilages,
  String $group_privilages_id,
) {
  # module containment
  contain ::couchbase::config
  contain ::couchbase::install
  # Relationship clases
  Class['couchbase::config']
  ->Class['couchbase::install']
}
