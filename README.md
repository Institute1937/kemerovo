# Kemerovo

![screenshot](https://s3.eu-west-2.amazonaws.com/io1937/screenshots/kemerovo.jpeg)

## Version

v0.1.1

## TLDR / What is it?

Development box for Vagrant. 

Debian 8

Rails 5

Ruby 2.4.3

Go 1.9.3

Phoenix 1.6

Elixir 1.3

Node 8.9

rbenv 1.1

## PREREQUISITES

VirtualBox and Vagrant - eg

```
➜  ~ vboxmanage -v
5.2.0r118431
➜  ~ vagrant -v
Vagrant 2.0.1
```


```
git clone https://github.com/cerico/kemerovo
cd kemerovo
cd larch || cd poplar # Either of these will work
sudo echo "192.168.33.17 rails.kemerovo.box" >> /etc/hosts # Optional
vagrant up
```

## Where is my starter app running?

There is one starter rails app, with go, clojure and phoenix to follow

```
vagrant ssh
cd ~/starters/rails && bundle exec passenger start -p 13000
```

This is now accessible from your mac at http://localhost:13000, and if you added the entry to your macs /etc/hosts file as above, it will also be available at http://rails.kemerovo.box

## Larch / Poplar

Larch and Poplar are both identical, Larch is a prepackaged box on vagrant cloud, Poplar is a vanilla debian box, with all packages and configuration done by script. The end result is the same, though Poplar is more configurable



