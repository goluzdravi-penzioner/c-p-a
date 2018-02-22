class nginx::install 
(
$pkg_name = 'nginx',
)

{
  package { $pkg_name:
    name    => $pkg_name,
    ensure  => installed,
  }

  service { $pkg_name:
    name    => $pkg_name,
    ensure  => true,
    enable  => true,
    require => Package["$pkg_name"],
  }

  file { '/etc/nginx/conf.d/nexus.conf':
    ensure  => file,
    content => template('nginx/nexus.conf.erb'),
    notify  => Service["$pkg_name"],
  }
}

