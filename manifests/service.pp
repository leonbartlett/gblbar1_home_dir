# == Class gblbar1_home_dir::service
#
# This class is meant to be called from gblbar1_home_dir.
# It ensure the service is running.
#
class gblbar1_home_dir::service {

  service { $::gblbar1_home_dir::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
