#Simple test.
file { '/etc/motd':
  ensure => file,
  content => "Hello Hal.\n",
  owner => 'root',
  group => 'root',
  mode => '0644',
}

#Install EPEL package.
package { 'epel-release':
  ensure => installed,
}

#Install NGINX package.
package { 'nginx':
  ensure => installed,
}

#Make sure service is running.
service { 'nginx':
  ensure => running,
}

#Configure port.

#Ensure firewall is open.

#Ensure contents of root file.