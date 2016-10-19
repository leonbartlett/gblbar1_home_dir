# == Class gblbar1_home_dir::install
#
# This class is called from gblbar1_home_dir for install.
#
class gblbar1_home_dir::install {

  package { $::gblbar1_home_dir::package_name:
    ensure => present,
  }
}
