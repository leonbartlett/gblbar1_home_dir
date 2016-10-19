# Class: gblbar1_home_dir
# ===========================
#
# Full description of class gblbar1_home_dir here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class gblbar1_home_dir (
  $package_name = $::gblbar1_home_dir::params::package_name,
  $service_name = $::gblbar1_home_dir::params::service_name,
) inherits ::gblbar1_home_dir::params {

  # validate parameters here

  class { '::gblbar1_home_dir::install': } ->
  class { '::gblbar1_home_dir::config': } ~>
  class { '::gblbar1_home_dir::service': } ->
  Class['::gblbar1_home_dir']
}
