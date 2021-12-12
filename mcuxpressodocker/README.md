This Dockerizes the MCUExpresso IDE.

Download it from NXP.

Extract the content .deb:

sh mcuxpressoide-someversion.x86_64.deb.bin --noexec --target somedir

copy the .deb from somedir to a packages/ directory here.

Do "docker build"


