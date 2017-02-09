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
class gblbar1_home_dir {


  file { '/home/gblbar1/.vim' :
    ensure  => directory,
    owner   => 'gblbar1',
    group   => 'gblbar1',
    mode    => '0775',
    source  => 'puppet:///modules/gblbar1_home_dir/vim',
    recurse => true,
  }
  file { '/home/gblbar1/.gitconfig' :
    ensure => present,
    owner  => 'gblbar1',
    group  => 'gblbar1',
    mode   => '0664',
    source => 'puppet:///modules/gblbar1_home_dir/gitconfig',
  }
  file { '/home/gblbar1/.vimrc' :
    ensure => present,
    owner  => 'gblbar1',
    group  => 'gblbar1',
    mode   => '0664',
    source => 'puppet:///modules/gblbar1_home_dir/vimrc',
  }
  file { '/home/gblbar1/.bashrc' :
    ensure => present,
    owner  => 'gblbar1',
    group  => 'gblbar1',
    mode   => '0644',
    source => 'puppet:///modules/gblbar1_home_dir/bashrc',
  }
  file { '/home/gblbar1/puppet/modules' :
    ensure => directory,
    owner  => 'gblbar1',
    group  => 'gblbar1',
    mode   => '0655',
  }
  file { '/home/gblbar1/puppet/manifests' :
    ensure => directory,
    owner  => 'gblbar1',
    group  => 'gblbar1',
    mode   => '0755',
  }
  file { '/home/gblbar1/git_personal_access_tokens' :
    ensure => present,
    owner  => 'gblbar1',
    group  => 'gblbar1',
    mode   => '0400',
    source => 'puppet:///modules/gblbar1_home_dir/git_personal_access_tokens',
  }

}
