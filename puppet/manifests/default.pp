$ruby_version = "2.0"

file { '/etc/motd':
	content => "
***********************************

  Dashing Development Machine

- OS:      Ubuntu 12.04
- Ruby:    ${ruby_version}
- IP:      192.168.33.12

***********************************
\n"
}

class { setup:
	ruby_version => $ruby_version
}
