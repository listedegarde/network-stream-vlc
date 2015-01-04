#!/bin/bash
export DISPLAY=:0
ssh -X user@192.168.0.10 '
nautilus /home/user/Desktop
'
