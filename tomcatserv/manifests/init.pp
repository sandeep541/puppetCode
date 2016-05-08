class tomcatserv {
package { 'pack':
       name => "tomcat6",
       ensure => present,
#       before => File['/usr/share/tomcat/webapps/calendar.war']
       }

#file { "/usr/share/tomcat/webapps/calendar.war":
 
#      ensure => file,
 #      source => "puppet:///modules/tomcatserv/calendar.war",
  #     notify => Service['serv']
   #     }
service { 'serv':
      name => "tomcat",
      ensure => running,
      enable =>true,
      require=> Package['pack']
}
}

