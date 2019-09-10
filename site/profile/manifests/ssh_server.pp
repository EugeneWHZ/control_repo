class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDaNbjADw1HzQThDIxpPypm1/GT0yenasvUw4K/ZK7yqSNc8qkrnUs5AnB/JkwLWMPYJ/w2TrqAzs42a5uh8H339ebna6kHUuSDEZ13MOHM0KJ7bveIkcvMXv9+pEQa4w8OmPWKV9yCzFXfhYL9bruh1xo+wpzFKNS0e6qE0TrxgwbnWfHFP9/OIWGGRhjtRZKtKKhUuz5laet4xKceVagVpp2DtcmlkkPGgXYeyM9fBaynBDph4qVNdohPbY5P0InR3FcNQUmM+JXNcAqeM85VxqfuacX1qmDEfd/TWzIPnNYm7jOZKQDsJpjysnv4WKXcccvU5QbiWazFtrJEGSFr',
	}  
}
