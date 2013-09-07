class nodejs(
  $package_name = params_lookup( 'package_name' ),
  $enabled      = params_lookup( 'enabled' )
  ) inherits nodejs::params {

    $ensure = $enabled ? {
      true => present,
      false => absent
    }

  include nodejs::package, nodejs::config
}
