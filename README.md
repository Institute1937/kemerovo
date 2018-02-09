# Kemerovo

![screenshot](https://s3.eu-west-2.amazonaws.com/io1937/screenshots/kemerovo.jpeg)

## Version

v0.1.3

## TLDR / What is it?

Development box for Vagrant. I put everything in one box, it seems more economical of space and standardization than having lots of tiny boxes, and it still installs pretty quick (9-10 minutes).

Larch is the prepackaged version, all the package installs and configuration already done. Poplar is the scripted version, uses a standad Debian box and the rest of the intallation and configuration is visible in the inline script. Both are essentially the same, Larch is quicker to install, Poplar more editable if you want to use as a base to create your own packaged box. Poplar may sometimes have some extra bits that I haven't got to packaging up into a new version yet

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

## Starter App

There is one starter rails app, with go, clojure and phoenix to follow

```
vagrant ssh
cd ~/starters/hello-rails && bundle exec passenger start -p 13000
```

This is now accessible from your mac at http://localhost:13000, and if you added the entry to your macs /etc/hosts file as above, it will also be available at http://rails.kemerovo.box

## Larch / Poplar

Larch and Poplar are both identical, Larch is a prepackaged box on vagrant cloud with everything included, Poplar is a vanilla debian box, with all packages and configuration done by script. The end result is the same, though Poplar is more configurable if you want to. Essentially Larch is a packaged version of Poplar. Poplar therefore may sometimes have a few things that haven't made it into Larch yet.

##  Install speeds

Larch   577627 ms (9.6 minutes)
Poplar 1074355 ms (17.9 minutes)

Compiled version does install a lot faster than the scripted version!







