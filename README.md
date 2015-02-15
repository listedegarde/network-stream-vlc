Network Stream VLC
==================

This is a simple script that I set up with my brother to stream a video over the network to multiple computers simultaneously, using VLC.  See the [glossary](#glossary) for definitions.

Requirements
------------

<ul>
	<li>One server.  Assuming username "user" and IP "192.168.0.10".
	<li>One DHCP server (for diskless booting).  Assuming IP "192.168.0.4".
	<li>One or more client computers.  Assuming user "john" and IPs from "192.168.0.110" through "192.168.0.120".
	<li>Basic understanding of Linux.
	<li>A secure, local network.
	<li>SSH public key from server on all clients.
</ul>

Usage
-----

### Boot.sh

<ol>
	<li>Run `sudo sh boot.sh` to boot machines on the network.
	<li>By adding the MAC to your /etc/ethers you can use a name instead of the address.
</ol>

### Nautilus.sh

<ol>
        <li>Place "nautilus.sh" on the computer(s) from which you wish to start the stream.
        <li>Place your public key from this/these computer(s) in the server's authroized_keys file.
        <li>Double-clicking this file will now open nautilus on the server, displayed on the local device.
</ol>

### Stream.sh

<ol>
	<li>Place a video on the Desktop of the server.
	<li>Add stream.sh in ~/.local/share/nautilus/scripts/ on the server.
	<li>You should now have Scripts => stream.sh in your right-click menu in Nautilus.
</ol>

### Play.sh && Play.php

@TODO: Fill in instruction below:

Instructions coming soon.  :)

Add a stop functionality.  Play and pause?

### General instructions

<ol>
	<li>Make all .sh files executable.
</ol>


Glossary
--------

|Name    |Definition      |
|:-------|:---------------|
|Server  | A fast computer with Nautilus File Manager, used for streaming. |
|Client  | A computer for receiving the stream.  Ideally, use the same user name on all computers. Consider diskless booting for simplicity. |

@TODOs:
-----

<ol>
	<li><strike>Make a script to boot on LAN</strike>
	<li>Set black screen remotely or on boot
	<li>Set screen resolution based on MAC address
	<li>Set up POP3 server
	<li>Put M/D computer on offline network
	<li>Make Chrome extension to stream Youtube video through VLC
	<li>Enable starting playback from mobile device
	<li>Mount HDD and USB from disklessly booted computers
	<li>Add DVD sreaming capability
	<li>Set up DNS server
	<li>Printer update (HP)
</ol>
