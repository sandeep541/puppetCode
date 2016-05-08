class apache{
$packname = 'httpd'
	package{'somepackage':
	name => $packname,
	ensure => installed,
        before => file['/etc/httpd/conf/httpd.conf'] 
}
file {"/etc/httpd/conf/httpd.conf":
	ensure => file,
	source  => "puppet:///modules/apache/test.conf",
	notify => service['someservice']
}
service{'someservice':
	name => httpd,
	ensure => running,
	enable => true,
	require => package['somepackage']
}


}
