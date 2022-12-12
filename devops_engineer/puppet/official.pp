# Install httpd onto stapp01 and ensure it is running.

node 'stapp01.stratos.xfusioncorp.com' {
  package { 'httpd':
    ensure => 'installed',
  }

  service { 'httpd':
    ensure => 'running',
    enable => true,
  }
}
