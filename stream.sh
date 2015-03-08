#!/usr/bin/env bash

# @TODO: New stream, to be implemented via http and ogg
#:sout=#transcode{vcodec=theo,vb=800,acodec=vorb,ab=128,channels=2,samplerate=44100}:http{dst=:8080/stream.ogg} :sout-keep
vlc "$1" --sout "#rtp{sdp=rtsp://:8554/}" --sout-keep &
while ! echo exit | nc 192.168.0.10 8554; do sleep .1; done

stream () {
  ssh john@192.168.0.$1 '
	pkill vlc
	export DISPLAY=:0
	xset dpms force on
	cvlc -f rtsp://192.168.0.10:8554/
	export DISPLAY=""
  '
}

for i in {110..120}
do
  stream $i &
done
