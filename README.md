VDI_OnPrem_B01_PuppEnv

VDI Platform - On Premises - First for B - Full Puppet Environment

##Setup Steps

###Prepare Puppet

####Puppet Config
1. Confirm Puppet is _old_ enough, eg <=3.6, by `puppet -V`
2. Confirm modulepath has "C:/ProgramData/PuppetLabs/code/environments/production/modules" by `puppet config print modulepath`
  1. Fix with something like `puppet config set modulepath "C:/ProgramData/PuppetLabs/puppet/etc/modules;C:/usr/share/puppet/modules;C:/ProgramData/PuppetLabs/code/environments/production/modules"`
3. Confirm ordering is "manifest" by `puppet config print ordering`
  1. Fix with `puppet config set ordering manifest`
  2. This is a requirement of jriviere-windows_ad
4. Confirm environment name matches this git repo by `puppet config print environment`
  1. Fix with `puppet config set environment <repo name here, eg VDI_OnPrem_B01_PuppEnv>`
5. Confirm modulepath also has your environment, eg "C:/ProgramData/PuppetLabs/code/environments/<repo name here, eg VDI_OnPrem_B01_PuppEnv>/modules" by `puppet config print modulepath`
  1. Fix with something like `puppet config set modulepath "C:/ProgramData/PuppetLabs/puppet/etc/modules;C:/usr/share/puppet/modules;C:/ProgramData/PuppetLabs/code/environments/<repo name here, eg VDI_OnPrem_B01_PuppEnv>/modules"`

####Puppet Environment
1. Clone this repo to `C:/ProgramData/PuppetLabs/code/environments/`
  1. Per "Puppet Config"

####Puppet 3rd party Modules
1. Install AD module (includes dependancies)
  1. `puppet module install jriviere-windows_ad`
