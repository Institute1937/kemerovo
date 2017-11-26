# PREREQUISITES

VirtualBox and Vagrant - eg

```
➜  ~ vboxmanage -v
5.2.0r118431
➜  ~ vagrant -v
Vagrant 2.0.1
```

# SETUP

### From Github

```
git clone https://github.com/Institute1937/kemerovo
cd kemerovo
vagrant up
```

### From Vagrantcloud

```
vagrant init io37/kemerovo --box-version 0.0.4
vagrant up
```


# PREINSTALLED

 - debian 8 (jessie)
 - docker
 - docker-compose
 - node

# USAGE

```
vagrant ssh
```

This will connect you into the Vagrant machine

# SAMPLE APPLICATION

```
vagrant ssh -c "cd marsden && sudo make start"
```

A sample dockerized application is included (marsden). This has Clojure, Javascript, and Nginx containers. The above command will build and run the sample application. It is mapped on port 3100 and will be accessible at http://localhost:3100


# WHY?

Kemerovo is a dev box with docker installed and a sample app. The idea is reduce reliance still further on OSX, and have docker itself contained in a vm 
