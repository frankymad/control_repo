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
		key   =>'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFwnu6ekDcgmT4T0Jmpsjub4s2PhyY9HBlc0CsY26q2gHZSdtJQomEauJc9eCOAR9v46vORn6aJ8LIZvhCcle+PN5FzgSq9nQQyXQ8cLcZ3wh8rezDCm5+vgLKEwbfQ8shR9Vk7A6Sf9/ryE43sQgaBhwgsRYK2n+QIGHJB9jkD+41Q8h7ddsJ1lk4BRbEvOd5HF/oX9ug73q3C8cxwNQzD90I6fGYDlOMtnrM6YUY2qHARVuSyysuMjVD96B5gUBZJeyxDcvXfIUZUrmBYo25bJiDy5NHZ2jln1fgcaJ2flAS8vJWk6A54ukYqgns7yy6eBZ+C3ueI2k60FBoFhuN',
	}  
}
