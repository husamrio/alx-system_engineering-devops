# Create a file using puppet with the below specifications
# I love puppet

file { '/tmp/school':
  ensure  => file,
  path    => '/tmp/school',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet'
}