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

A shared folder one level up from the vm

```
➜  kemerovo git:(master) mdkir ../shared
```

Or you can comment that line out if you don't want it

## How do I run it?

```
git clone https://github.com/cerico/kemerovo
cd kemerovo
vagrant up
```

## Where is my app running?

If you have eg a rails app on port 3000, it will be accessible on http://localhost:13000, change the mappings as you see fit


## Why are there two versions?

They are both exactly the same. You can rename the files and use either one.

Vagrantfile-src uses a base debian box and runs scripts to install various the packages needed for this box

Vagrantfile is the result of packaging that box up and storing on vagrant cloud, so the setup has already been done

