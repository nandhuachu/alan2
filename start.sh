if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nandhuachu/alan2.git /alan2 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /alan2 
fi
cd /alan2 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
