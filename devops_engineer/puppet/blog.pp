# Authorize thor to login to stapp01 from jump_host.
class ssh_node1 {
  ssh_authorized_key { 'thor@jump_host.stratos.xfusioncorp.com':
    ensure => present,
    user   => 'tony',
    type   => 'rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDgH21ObtWbjW3BYu08RMe4qoFEmPqHL09ANOh4q7CTqG51GEIfkI4HJssjmt5pYJqhfqMoG5YV5IodRcoWEtYhyXjcJ51Mf/pnbK6x7GnBO7EZzMSLV4777srad8bZ3CLY/8nBBxud6u8bTBSV41nUkWks2oKqFtol3O2puivkhVtXFCk89P+jCTZsPOeDVXxcgfzvHN4UVrA5/vjxD1xZr2kwaK2DrqQcQXan6dqcTRpyxBmszF+Yjni0GGcmKK8nkJOtS44BCrDY48a/Kt5ktZESw+8Fs9oFCmOuAvLB4CaqM1gnjA0yecC2Hhy09OMi2j3GoWQSeh5FEHrRBkjVqWkMR3wO8xi7utqIkgA7LaoofbcRtCwQp1RlI9c7X7OuxB5M7EaOfVFBsWNgxDgHod7wzsUp2h8v3j06es6P544VID6t4DUVFZaoMUU59FaAyKXa8Th6CBhWR4TBz5l5/JbBNT8pnfN5rJBBxrjMa+KUhxd8FWIPUMI1DZAhpWZuc56s/OZMLR9woalYey0cE2/19z5rW0lVTq7ArLUwdZYzUE1trpkqdTGZ8GNdjO01hXtO0XwcJ/ViLIl38UjF9M0SJIrYo6+azpEqMSQ7RRbhIDzEUNFvSUx38dT2J7+iJJSJ2clbqCoJEsN1Rxzpe0Bo5fRSk8MczzkcacVrpw==',
  }
}

# Authorize thor to login to stapp02 from jump_host.
class ssh_node2 {
  ssh_authorized_key { 'thor@jump_host.stratos.xfusioncorp.com':
    ensure => present,
    user   => 'steve',
    type   => 'rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDgH21ObtWbjW3BYu08RMe4qoFEmPqHL09ANOh4q7CTqG51GEIfkI4HJssjmt5pYJqhfqMoG5YV5IodRcoWEtYhyXjcJ51Mf/pnbK6x7GnBO7EZzMSLV4777srad8bZ3CLY/8nBBxud6u8bTBSV41nUkWks2oKqFtol3O2puivkhVtXFCk89P+jCTZsPOeDVXxcgfzvHN4UVrA5/vjxD1xZr2kwaK2DrqQcQXan6dqcTRpyxBmszF+Yjni0GGcmKK8nkJOtS44BCrDY48a/Kt5ktZESw+8Fs9oFCmOuAvLB4CaqM1gnjA0yecC2Hhy09OMi2j3GoWQSeh5FEHrRBkjVqWkMR3wO8xi7utqIkgA7LaoofbcRtCwQp1RlI9c7X7OuxB5M7EaOfVFBsWNgxDgHod7wzsUp2h8v3j06es6P544VID6t4DUVFZaoMUU59FaAyKXa8Th6CBhWR4TBz5l5/JbBNT8pnfN5rJBBxrjMa+KUhxd8FWIPUMI1DZAhpWZuc56s/OZMLR9woalYey0cE2/19z5rW0lVTq7ArLUwdZYzUE1trpkqdTGZ8GNdjO01hXtO0XwcJ/ViLIl38UjF9M0SJIrYo6+azpEqMSQ7RRbhIDzEUNFvSUx38dT2J7+iJJSJ2clbqCoJEsN1Rxzpe0Bo5fRSk8MczzkcacVrpw==',
  }
}

# Authorize thor to login to stapp03 from jump_host.
class ssh_node3 {
  ssh_authorized_key { 'thor@jump_host.stratos.xfusioncorp.com':
    ensure => present,
    user   => 'banner',
    type   => 'rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDgH21ObtWbjW3BYu08RMe4qoFEmPqHL09ANOh4q7CTqG51GEIfkI4HJssjmt5pYJqhfqMoG5YV5IodRcoWEtYhyXjcJ51Mf/pnbK6x7GnBO7EZzMSLV4777srad8bZ3CLY/8nBBxud6u8bTBSV41nUkWks2oKqFtol3O2puivkhVtXFCk89P+jCTZsPOeDVXxcgfzvHN4UVrA5/vjxD1xZr2kwaK2DrqQcQXan6dqcTRpyxBmszF+Yjni0GGcmKK8nkJOtS44BCrDY48a/Kt5ktZESw+8Fs9oFCmOuAvLB4CaqM1gnjA0yecC2Hhy09OMi2j3GoWQSeh5FEHrRBkjVqWkMR3wO8xi7utqIkgA7LaoofbcRtCwQp1RlI9c7X7OuxB5M7EaOfVFBsWNgxDgHod7wzsUp2h8v3j06es6P544VID6t4DUVFZaoMUU59FaAyKXa8Th6CBhWR4TBz5l5/JbBNT8pnfN5rJBBxrjMa+KUhxd8FWIPUMI1DZAhpWZuc56s/OZMLR9woalYey0cE2/19z5rW0lVTq7ArLUwdZYzUE1trpkqdTGZ8GNdjO01hXtO0XwcJ/ViLIl38UjF9M0SJIrYo6+azpEqMSQ7RRbhIDzEUNFvSUx38dT2J7+iJJSJ2clbqCoJEsN1Rxzpe0Bo5fRSk8MczzkcacVrpw==',
  }
}
node 'stapp01.stratos.xfusioncorp.com' {
  include ssh_node1
}

node 'stapp02.stratos.xfusioncorp.com' {
  include ssh_node2
}

node 'stapp03.stratos.xfusioncorp.com' {
  include ssh_node3
}
