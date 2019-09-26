# johnson-vmfiles

# Purpose
Builds a Ruby on Rails development virtual machine

# Specs
Vagrant virtual machine with ubuntu/xenial64 (as of the last time I updated these docs)

## Vagrant
* See Vagrantfile for port and ip specifications
* See Vagrantfile for shared folders (note "provision" is no longer used although present)
* See Vagrantfile for CPUs and memory specified

* Your virtual machine will be named "devstuff" unless you set an environment variable called "machine" to what you want (preferred, I use "ror")

## Ansible
* The rest of the VM is setup with Ansible via a shell script and playbooks

### Common: OS and Basic Packages
* OS and apt automatically updated when possible
* APT as the mechanism to install
* Common tools include only bash, openssl, git, and curl as of this edit

### DB: PostgreSQL

### Web: Latest Apache

### Framework

* ruby-install and chruby are used as the RoR installers
* complex sections are in their own yml file but included instead of referenced as ansible sub-roles or sub-tasks
* only one ruby version installed by this script, per the variable yml; you can add your own via chruby

# Tested

* Only on a Windows 10 box using Bash for Windows

# A Beginner's Guide to Troubleshooting

1. Sometimes getting the apt updates fail, probably because that server isn’t responding at that moment
1. Did you accidentally wack the three dashes at the beginning of the file?
1. If your file isn’t evaluated -- is it in the correct subdirectory?
1. Be careful of quotes and Ansible variables
1. Is your shell or command not executing as expected?  It may be because Ansible doesn’t call bash but rather sh and does it non-interactively -- meaning what your bash dotfiles do, doesn’t happen, including setting of the PATH environment variable
1. Did you accidentally name a results variable the same as a results variable in a previous task?
1. Are you root or [username] as appropriate for the task?
1. If you’re stuck, try the debug module



