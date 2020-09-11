---
title: "Intro to Quartus"
date: 2020-09-10T23:49:19+10:00

hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

# Notes

* EDA - Electronic Design Automation
* Altera Quartus (now owned by Intel)

---

# Software

* Version [13.0sp1](https://fpgasoftware.intel.com/13.0sp1/?edition=web) (13.0.1.232)
  * [Linux mirror](http://download.altera.com/akdlm/software/acdsinst/13.0sp1/232/ib_tar/Quartus-web-13.0.1.232-linux.tar) (Intel site doesn't work)
  * Last version that supports the hardware :')

* I made a [Docker image](https://github.com/featherbear/UNSW-COMP3222/tree/docker) to get Quartus II working on Linux

<!-- 

* https://hackaday.io/project/122480-eecolor-color3/log/141198-altera-quartus-install
* https://aur.archlinux.org/packages/quartus-free-130/
* https://www.bitsnbites.eu/installing-intelaltera-quartus-in-ubuntu-17-10/
* https://tomverbeure.github.io/2018/04/08/Altera-Quartus-Install.html
* https://www.jamieiles.com/posts/quartus-docker/

-->

---

# Hardware

## Altera DE1

* Don't need the 7.5V power supply - Can power off the USB port
* FPGA: Cyclone II - EP2C20F484C7N

# USB Blaster

The `USB Blaster` is the driver to communicate with these boards.

On Linux, if you run into the following error

```
$> quartus_pgm --auto
Info (213045): Using programming cable "USB-Blaster variant [1-9]"
1) USB-Blaster variant [1-9]
  Unable to lock chain (Insufficient port permissions)
```

You'll need to kill the `jtagd` process and run it as `root` (or write your udev rules)

---

* `RUN` - Program operation mode
* `PROG` - Programming mode (for active serial programming)

---

* **JTAG programming** is temporary, and only keeps the program whilst powered on
  * JTAG programming can be run on either `RUN` or `PROG` mode
  * Use the `.sof` files 
* **Active Serial programming** will write the program into the onboard flash (persist)
  * Use the `.pof` files
