echo "Started setting up..."
path = pwd
cd && mkdir ../usr/share/tb/
mv $path/* ../usr/share/tb/
chmod +x ../usr/share/tb/*
soco "bash ../usr/share/tb/bs.sh"
echo "$soco" >> ../usr/bin/tb
chmod +x ../usr/bin/tb
echo "finished !"
