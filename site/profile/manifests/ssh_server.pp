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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDkIFstxf2JPl176LSREMRifhtXeGmr48Gb394XK7reXkiml2tlmLB9t3ST66UxmF9MlSoc5N2+VzDq1ly2uitTrUWsNdAMGH3OFkCJC6y/VSNT90fQRTlLXpf4lkEW9CyzwkVU9ujUYYF6Yz95cQyb9PeXJIh4rmCDWhM6XPYdETx6fs0/T5GjUUU114viSEvUzMXnGW58kxmMu/HcwhMI5vtRDswAvyX7H+sycyOp0hPwkQ5rf4U1d/AIdUerYEgmPXUrcX2QV4HSdF6cBPF0XyPkfvkSAfsmr8x2eCq5I0hpjB/Cc65A64pjZQeXJUWyhPb5ytE3jWIyja930fjn',
	}  
}
