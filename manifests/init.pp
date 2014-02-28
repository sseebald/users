class users ($user,$groups) {

  $groups_array = split($groups, ',')    

  user {"${user}":
    ensure => present,
    home   => '/home/carlos',
    shell  => '/bin/bash',
    groups => $groups_array,
  }
}
