default['rackspace_htpasswd']['install_method'] = 'packages' # Can be python or ruby

default['rackspace_htpasswd']['built-in']['lang'] = 'python'

default['rackspace_htpasswd']['install_dir'] = '/usr/local/bin'
default['rackspace_htpasswd']['path']        = ::File.join(node['rackspace_htpasswd']['install_dir'], 'htpasswd')

default['rackspace_htpasswd']['packages'] = value_for_platform_family(
  ['rhel', 'fedora', 'suse'] => ['httpd-tools'],
  'debian' => ['apache2-utils']
)
