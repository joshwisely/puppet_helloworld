#Install EPEL package, which is needed to find the main package..
package { 'epel-release':
  ensure => installed,
}

#Install package.
package { 'nginx':
  ensure => installed,
}

#Make sure service is running.
service { 'nginx':
  enable => true,
  ensure => running,
}

#Configure port.

#Ensure firewall is open.

#Ensure contents of root file.