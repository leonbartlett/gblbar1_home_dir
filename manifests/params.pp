# == Class gblbar1_home_dir::params
#
# This class is meant to be called from gblbar1_home_dir.
# It sets variables according to platform.
#
class gblbar1_home_dir::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'gblbar1_home_dir'
      $service_name = 'gblbar1_home_dir'
    }
    'RedHat', 'Amazon': {
      $package_name = 'gblbar1_home_dir'
      $service_name = 'gblbar1_home_dir'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
