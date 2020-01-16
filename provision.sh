# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install python3
sudo apt-get install python3 python3-pip -y
sudo apt-get install python-software-properties -y
sudo pip3 install -r /home/ubuntu/app/requirements.txt

# create Downloads folder and csv file.
mkdir Downloads
touch Downloads/ItJobsWatchTop30.csv
