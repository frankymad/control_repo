node default {
  file {'/root/README':
    ensure => file,
    content => 'This is SHIT!',
    owner => 'root',
  }
  file {'/root/README':
    owner => 'root',
  }
}
