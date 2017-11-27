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

# INSTALLED

```
☁  ~  docker -v
Docker version 17.09.0-ce, build afdb6d4
☁  ~  docker-compose -v
docker-compose version 1.17.1, build 6d101fb
☁  ~  node -v
v8.9.1
☁  ~  npm -v
5.5.1
☁  ~  uname -a
Linux kemerovo 3.16.0-4-amd64 #1 SMP Debian 3.16.43-2+deb8u2 (2017-06-26) x86_64 GNU/Linux
☁  ~  cat /etc/os-release
PRETTY_NAME="Debian GNU/Linux 8 (jessie)"
```

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
