#Puppet Module CouchDB for Debian GNU/Linux 6.0 "Squeeze"

[Puppet][puppet] Module to install [CouchDB][couchdb] release on Debian GNU/Linux 6.0 "Squeeze" from *testing* release (i.e. `apt-get install couchdb`) and have it work correctly with projects using [Puppet][puppet] to provision [Vagrant][vagrant] development environments.

Tested on Vagrant box [debian-6.0.4-squeeze-server][debian-6.0.4-squeeze-server].

##Installation

###Install Dependencies

* [puppetlabs/apt](https://github.com/puppetlabs/puppet-apt) - Puppet module to help manage Apt.
* [puppetlabs/stdlib](https://github.com/puppetlabs/puppetlabs-stdlib) - Puppet module providing a "standard library" of resources for developing Puppet Modules.

###Install Module

Either `git clone` this repo to a `couchdb-debian` directory under your Puppet `modules/` directory:

    git clone git@github.com:semanticdreamer/puppet-couchdb-debian.git couchdb-debian

... or add it as a submodule into your project's Puppet `modules/` directory, e.g. `puppet/modules/couchdb-debian`:

	git submodule add git@github.com:semanticdreamer/puppet-couchdb-debian.git ./puppet/modules/couchdb-debian
	git submodule init && git submodule update
	
##Todo

* Update module according to Debian's release progress.

##Credits

* [Debian GNU/Linux][debian].

[puppet]: http://projects.puppetlabs.com/projects/puppet "Puppet"
[vagrant]: http://vagrantup.com/ "Vagrant"
[couchdb]: http://couchdb.apache.org/ "CouchDB"
[debian-6.0.4-squeeze-server]: https://github.com/semanticdreamer/veewee-vagrant-box-definitions "debian-6.0.4-squeeze-server"
[debian]: http://www.debian.org/ "Debian GNU/Linux"