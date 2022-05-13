if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DrPirate/adv-filter.git /Pirate
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Pirate
fi
cd /Ajax
pip3 install -U -r requirements.txt
echo "Starting 🔥"
python3 bot.py
