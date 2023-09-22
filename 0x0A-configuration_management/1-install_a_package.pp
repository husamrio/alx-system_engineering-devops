# Using Puppet Install flask using puppet lint

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}