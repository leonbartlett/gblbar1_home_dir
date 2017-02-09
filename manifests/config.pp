# == Class gblbar1_home_dir::config
#
# This class is called from gblbar1_home_dir for service config.
#
class gblbar1_home_dir::config {
  file { "/home/gblbar1/puppet/modules" :
    ensure  => directory,
    owner   => 'gblbar1',
    group   => 'gblbar1',
    mode    => "0655",
  }
  file { "/home/gblbar1/puppet/manifests" :
    ensure  => directory,
    owner   => "gblbar1",
    group   => "gblbar1",
    mode    => "0755",
  }


}
