class apt( $http_proxy = undef ) {
	package { 'apt':
		ensure	=> installed,
	}

	file { '/etc/apt/apt.conf':
		ensure	=> file,
		owner	=> root,
		group	=> root,
		mode	=> '0644',
		content	=> template('apt/apt.conf.erb'),
		require => Package['apt'],
	}
}
