docker-shellinabox
==================

CentOS 7 + ShellInABox

This is intended to work as a image with Shell-in-a-box, but
with a few extra perks.
If ran in the right way, it will mount the docker binary and its socket,
so that the running container can be used to control Docker on
its host.

The shell script "runshell.sh" serves as an example of how to do it.

This image provides a container with a "user" user (default password
is "mysecret"). Tha container start script (startshell.sh) looks for
a GID environment variable that should contain the "docker" gid from
the host (again, look in "runshell.sh" where this gid is fetched).

An environment variable SIAPORT can be used to change ShellInABox host
port (default is 4200).

An environment variable USERPWD can be used to change the "user" password.

So, in short:

* runshell.sh: script sample for starting the ShellInABox container in a host
* startshell.sh: container's starting script, as in Dockerfile (I dislike entrypoints).


