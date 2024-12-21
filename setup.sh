echo "Started setting up..."
mkdir /data/data/com.termux/files/usr/share/tb
cp * /data/data/com.termux/files/usr/share/tb
chmod +x /data/data/com.termux/files/usr/share/tb/*
echo "bash /data/data/com.termux/files/usr/share/tb/bs.sh" >> /data/data/com.termux/files/usr/bin/tb
chmod +x /data/data/com.termux/files/usr/bin/tb
echo "finished !"
