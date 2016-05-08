class  devuser{
	user{'sandep':
  ensure           => 'present',
  gid              => '503',
 comment           => 'sandeep',
 groups            => 'web',
  home             => '/home/sandep',
  shell            => '/bin/bash',
  uid              => '503',
}
}
