echo "Pulling from git!"
git clone git@github.com:jontonsoup/wman.git
cd wman
echo "Installing Da bundle"
bundle install
chmod 755 wman.rb
echo "Copying wman to /usr/local/bin/wman"
cp wman.rb /usr/local/bin/wman
cd ..
rm -rf wman
echo "Done! Enjoy slightly enhanced man pages! (Remember Pandoc http://johnmacfarlane.net/pandoc/installing.html is also a dependency and is not installed in a script!)"
echo "Try: wget alan turing"