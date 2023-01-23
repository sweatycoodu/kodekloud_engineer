# Populate the file 'beta.txt' under /opt/devops/ on host stapp02.xfusioncorp.com
# File permissions also to be set at 777.

node stapp02.stratos.xfusioncorp.com {
  file { '/opt/devops/beta.txt':
	ensure  => file,
	content => 'Welcome to xFusionCorp Industries!',
	mode    => '777',

  }
}
