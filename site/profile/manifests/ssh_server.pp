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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCkO6lq6iGnilVyNHj34n7ovtJRCDa4l9lonPJO+E4wLNDhXBVPtxZpMLLHlXTzlXRB6//rjbenSobXX1cZTR4bBU82RF6KJ+I4abbAKa2U0O/+VJ5NAgE13tszKFU5XRIOUvyAaRYYvbY7qzDlsWCAZnfdqvpx3TTwIKSUdUgZs98w8E714aMwrivBktleSZIQLHVmIyaN1SuvC6JjQDyTG4mk3DppzLCDGLzlvhWOocJ313as0LGPBdWtl+ThPfQyB/VaZisZGI3x5elAiOR1eVy2Cq7W3NzOzYE6o6P+b7pDh77Z1ccBeavYWf2IiWYpjDE/2btv+E34OMUy6q9J',
	}  
}
