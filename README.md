# wsl-ssh-usbkey
Quickly mount a usb drive and make your SSH host aliases available in WSL

# about
First time creating a public repository so the readme is probably going to be a little sparse. I built this for myself but I figured I'd make the repo public since it's quite useful and I searched quite a bit for something to do this but had not luck and deciding to do it myself.

I was looking for a way to carry around an address book of sorts for my ssh servers but found nothing and ended up making my own.
<br/>It keeps keys stored on the USB drive and never transfers them to the local machine.
<br/>It does however, transfer the host configs. I couldn't find a reliable away around this, with the way WSL mounts fat32, ssh doesn't have the permissions necessary to load the configs from the mounted partition.

# getting started
 1) Edit the mount point in ```mount.bat```
 
 2) Generate your keys and put them somewhere on the drive
 
 3) Create a new host file in the hosts directory, These host files are included into your main ```.ssh/config```. Check out the ```hosts/hosts``` example file to get started quick. You may have as many host files as you like.
 
 4) Run ```mount.bat```. This will mount the USB drive to the folder you specified in step 1, copy the contents of ```hosts``` to ```~/.ssh/hosts``` and insert an ```Input``` declaration in ```~/.ssh/config``` to include them in the main config.
 
 5) ```ssh <nameofhost>```
