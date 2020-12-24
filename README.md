# vagrant-debian-puppet-install
Custom vragrantfile to install puppet and set up local SSH public key to access the VMs


## Introduction
This is and AD-HOC setup for a vagrant virtual machine with a Debian Strecth image, where we install puppet-server.



## Setup

### Prerequisites
Modify the following lines, you should add your public keys of the macgines, you want to ssh from to this VM.

    web.vm.provision "shell", inline: "echo '
    ssh-rsa <AUTHORIZED_PUBLIC_KEY_1>
    ssh-rsa <AUTHORIZED_PUBLIC_KEY_2>
    ...
    ssh-rsa <AUTHORIZED_PUBLIC_KEY_N>
            '>> .ssh/authorized_keys"


for example, if you wish to access from a single machine:

    web.vm.provision "shell", inline: "echo '
    ssh-rsa thisIsASamplePublicKeyHash232kl1j21lnj21l
            '>> .ssh/authorized_keys"


Note: this is completely optional, but you must remove these lines if you wish to just ssh with `vagrant ssh` and nothing else


To run, execute:

    vagrant up