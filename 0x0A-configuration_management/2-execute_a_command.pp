# Using Puppet, create a manifest that kills a process named killmenow
exec { 'resource title':
    command  => 'pkill -9 -f killmenow',
    provider => 'shell'
}
