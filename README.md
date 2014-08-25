## Dashing-Vagrant

[Vagrant](http://docs.vagrantup.com/v2/why-vagrant/index.html) is open-source software used to create lightweight
and portable virtual development environments. Vagrant works like a "wrapper" for VirtualBox that can create,
configure, and destroy virtual machines with the use of its own terminal commands. Vagrant facilitates the setup
of environments without any direct interaction with VirtualBox and allows developers to use preferred editors
and browsers in their native operating system.

This setup will create a Dashing Ruby on Rails development environment with a sample dashboard.

###  Install Vagrant ###

- Download and install [VirtualBox 4.3.12](https://www.virtualbox.org/wiki/Downloads)
- Download and install [Vagrant 1.6.4](http://www.vagrantup.com/downloads.html)

Clone this `dashing-vagrant` respository (or a fork) to a directory on your host machine:

    host $ git clone https://github.com/<username>/dashing-vagrant.git

### Connect to the Virtual Machine ###

Start the virtual machine:

    host $ vagrant up

Connect to the virtual machine via ssh:

    host $ vagrant ssh

Bundle the Ruby gems:

    vagrant $ cd dashing
    vagrant $ bundle install

Setup environment variables:

* Make a copy of the `sample.env` file named `.env` in the project root
* Edit the `.env` file and enter the required tokens

Start the Dashing server

    vagrant $ dashing start

### See the Sample Dashboard

Launch your local browser and navigate to application using localhost `http://localhost:3030`
or the static IP Address of the virtual machine `http://192.168.33.12:3030`
