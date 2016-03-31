class apache {
package { 'pack':
       name => "httpd",
       ensure => present,
       before => File['/etc/httpd/conf/httpd.conf']
       }
file { "/etc/httpd/conf/httpd.conf":
       ensure => file,
       source => "puppet:///modules/apache/test.conf",
       notify => Service['serv']
        }
service { 'serv':
      name => "httpd",
      ensure => running,
      enable =>true,
      require=> Package['pack']
}
}

