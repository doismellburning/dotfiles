#!/bin/bash

# With many thanks to https://github.com/mathiasbynens/dotfiles/blob/master/.macos

if [[ $OSTYPE != "darwin"* ]]
then
	echo "Bailing on OSX config because running on $OSTYPE"
	return  # return not exit because it's a `source`d script (http://stackoverflow.com/a/9640736/928098) - learnt that one the hard way!
fi

# A whole bunch of this won't take effect without restarting various components/services
# Either: logout/restart
# Or possibly: killall cfprefsd SystemUIServer


SCREENSHOT_DIR="${HOME}/Screenshots"
mkdir -p $SCREENSHOT_DIR
defaults write com.apple.screencapture location -string $SCREENSHOT_DIR
