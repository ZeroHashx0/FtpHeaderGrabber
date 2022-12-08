# FtpHeaderGrabber
Simple bash script to search for "Anonymous login" on a ftp servers
This script uses masscan to search for the anonymous header on a ftp server, this is my first actually script so sorry in advanced if its buddy 


Steps:
sudo pacman -S masscan or sudo apt install masscan 
sudo chmod +x FtpAnonScan.sh
bash FtpAnonScan.sh IpText files 
