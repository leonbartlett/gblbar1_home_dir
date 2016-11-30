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
    mode    => '0755',
    source  => 'puppet:///modules/gblbar1_home_dir/vim',
    recurse => true,
  }

  file { '/home/gblbar1/.gitconfig' :
    ensure  => present,
    owner   => 'gblbar1',
    group   => 'gblbar1',
    mode    => '0664',
    source  => 'puppet:///modules/gblbar1_home_dir/gitconfig',
  }



}
