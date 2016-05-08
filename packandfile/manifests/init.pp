class packandfile{
	package{'somepackage':
	name   =>  "wget",
	ensure => installed
}
file{"/home/client/wget.txt":
	ensure => file,
	owner  => "root",
	mode   => 0777,
	content => "install wget from packandfile module"
}
}
