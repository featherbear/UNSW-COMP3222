# UNSW COMP3222 Quartus II Docker Image

A Docker image for Quartus II 13.0sp1 (13.0.1.232).  
Configured to work with the Altera DE1 and DE0 boards that run the Cyclone II FPGA.

---

## Usage

> Note: Because I'm hosting the Docker image on GitHub, rather than Docker Hub - you will have to [follow these steps](https://docs.github.com/en/packages/using-github-packages-with-your-projects-ecosystem/configuring-docker-for-use-with-github-packages#authenticating-to-github-packages) to authenticate.

### Running the Quartus II IDE

Quartus II can be launched through the [`quartus`](https://raw.githubusercontent.com/featherbear/UNSW-COMP3222/docker/quartus) script

### Running the Quartus CLI Tools

The [`quartus_shell`](https://raw.githubusercontent.com/featherbear/UNSW-COMP3222/docker/quartus) script runs passed parameters in the container.  

```bash
quartus_shell /app/quartus/bin/quartus_pgm -l
```

---

If no argument is supplied, [`quartus_shell`](https://raw.githubusercontent.com/featherbear/UNSW-COMP3222/docker/quartus_shell) will spawn a shell in the container, in the `/build` directory. This folder is mapped to the folder where you launched the script.

Example

```bash
~ /home/student/Desktop
$> quartus_shell

[quartus] ~ /build
[quartus] $> 
```

### University Program VWF / Waveform Editor

ModelSim doesn't play nice in the Waveform Simulator ([See issue](https://github.com/featherbear/UNSW-COMP3222/issues/1)).  
To get simulations workings, inside the Simulation Waveform Editor go to [Simulation] > [Options] and select `Quartus II Simulator`.

### Mounts and Application Points

* Quartus II is installed to the `/app` directory of the Docker container
* `/build` is mapped to the PWD of the script caller

### Environment variables

|Name|Description|
|:---|:----------|
|`JTAG_SERVER`|(optional) JTAG server address|
|`JTAG_PASSWD`|(optional) JTAG server password|

---

## Mac OS X

To run Quartus II on a Mac you will need to install `xquartz` and `socat` - both available on Homebrew.  

```bash
brew install xquartz socat 
```

Then configure `xquartz` to "Authenticate connections" and "Allow connections from network clients".  

Next, in another window (perhaps add it as a backgrounded command in your launch script), run the following

```
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```

Finally, modify the Docker script `DISPLAY` environment variable value from `$DISPLAY` to `host.docker.internal:0`

Note: USB Blaster support not tested

## Convenience

### Desktop Shortcut

A `.desktop` launcher shortcut can be created to run Quartus II IDE

```
[Desktop Entry]
Version=1.0
Type=Application
Name=Quartus II
Exec=>>CHANGE ME TO THE PATH OF quartus<<
Comment=Quartus II
Terminal=false
```

## Container Security

> HHAHAHAHAH DOCKER PRIVILEGES GO BRRRRRRR

To exchange security for convenience (i.e. Docker access to USB Devices), the scripts set the `--privileged` flag when running the container.  

If you aren't going to use Programmer and care about security, you can remove that line from the scripts

For X server compatibility, the script also grants `root` access to the X displays... Insecure.. but simple!

---

Based off Christof Harnischmacher's [quartus-lite](https://github.com/chriz2600/quartus-lite)
