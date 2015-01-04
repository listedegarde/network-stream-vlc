Network Stream VLC
==================

This is a simple script that I set up with my brother to stream a video over the network to multiple computers simultaneously, using VLC.  See the [glossary](#glossary) for definitions.

Requirements
------------

<ul>
	<li>One server.  Assuming username "user" and IP "192.168.0.10"
	<li>One or more client computers.  Assuming IPs from "192.168.0.110" through "192.168.0.120".
	<li>Basic understanding of Linux.
	<li>A secure, local network.
	<li>SSH public key from server on all clients.
</ul>

Usage
-----

<ol>
	<li>Place "nautilus.sh" on the computer(s) from which you wish to start the stream.
	<li>Place your public key from this/these computer(s) in the server's authroized_keys file.
	<li>Double-clicking this file will now open nautilus on the server, displayed on the local device.
	<li>Place a video on the Desktop of the server.
	<li>Add stream.sh in ~/.local/share/nautilus/scripts/
	<li>Make all .sh files executable.
	<li>You should now have Scripts => stream.sh in your right-click menu in Nautilus.
</ol>


Glossary
--------

|Name    |Definition      |
|:-------|:---------------|
|Server  | A fast computer with Nautilus File Manager, used for streaming. |
|Client  | A computer for receiving the stream.  Ideally, use the same user name on all computers. |

