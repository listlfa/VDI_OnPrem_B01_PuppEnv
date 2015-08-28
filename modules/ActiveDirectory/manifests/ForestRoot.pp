ActiveDirectory

# == Class: vdi
#
# Full description of class vdi here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the function of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'vdi':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class ActiveDirectory::ForestRoot {
		class {'windows_ad':
		  install                => present,
		  installmanagementtools => true,
		  restart                => true,
		  installflag            => true,
		  configure              => present,
		  configureflag          => true,
		  domain                 => 'forest',
		  domainname             => 'jre.local',
		  netbiosdomainname      => 'jre',
		  domainlevel            => '6',
		  forestlevel            => '6',
		  databasepath           => 'c:\\windows\\ntds',
		  logpath                => 'c:\\windows\\ntds',
		  sysvolpath             => 'c:\\windows\\sysvol',
		  installtype            => 'domain',
		  dsrmpassword           => '1234%qwertY',
		  installdns             => 'yes',
		  localadminpassword     => '1234%qwertY',
		  }
}
