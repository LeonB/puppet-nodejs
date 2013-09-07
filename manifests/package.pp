class nodejs::package {

  apt::ppa { 'ppa:chris-lea/node.js': }

  package  { $nodejs::package_name:
    ensure  => $nodejs::ensure,
    require => Apt::Ppa['ppa:chris-lea/node.js'],
  }
}
