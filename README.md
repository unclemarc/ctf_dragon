# ctf_dragon

Scripts and docker stuff for the October 2021 Defcon 610 Pub Crawl

A 3 gate puzzle that runs on a Raspberry Pi Zero

Much of this comes from gangrif's fine work, found at https://github.com/gangrif/dc610-pubcrawl-example

I ended up having to code in the absolute path /home/pi/lab/ctf_dragon... in a few places. So if you re-deploy, keep that in mind.

Need to copy codegen.sh into /usr/local/bin and copy the service files into /etc/systemd/system. This stuff is located in the system_stuff directory. Other than that, things are meant to be run right from the /home/pi/lab/ctf_dragon repo.

I've included get-docker.sh in the repo. This was provided by Docker to install the docker bits on the Pi. It'll do the trick.

