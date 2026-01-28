if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/VJBots/AutoFilterAdvance/blob/TECH_VJ/Dockerfile /LuckyBoy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LuckyBoy
fi
cd /LuckyBoy
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
