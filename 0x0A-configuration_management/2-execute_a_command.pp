# Execute a command using puppet
# create a manifest that kills a process named 'killmenow'
# 'exec' and 'pkill' Must be used

exec { 'pkill killmenow':
  command => '/usr/bin/pkill -f /killmenow'
}