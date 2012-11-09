echo "Pulling from git!"

echo "Installing Da bundle"
bundle install
chmod 755 wman.rb
echo "Copying wman to /usr/local/bin/wman"
cp wman.rb /usr/local/bin/wman
echo "Done! Enjoy slightly enhanced man pages!"
