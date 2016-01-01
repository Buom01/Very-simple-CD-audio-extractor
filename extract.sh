 
#!bin/bash
for ((i=1;i=<15;i++))
do
vlc --no-sout-video --cdda-track=$i cdda:///dev/sr0  --sout "#transcode{acodec=s16l,channels=2}:std{access=file,mux=wav,dst=./$i.wav}" vlc://quit
done
