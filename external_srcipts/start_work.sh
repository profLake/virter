#!/bin/bash

#osascript -e 'tell application "Terminal" to do script "
#    source /Users/sceneste/.bashrc; cd ~/sandbox"'
#### osascript...source... --- we can do it just in the current terminal
####    like this:
    source /Users/sceneste/.bashrc; cd ~/sandbox/


osascript -e 'tell application "Terminal" to do script "
    source /Users/sceneste/.bashrc; cd $PROJECT/"'


osascript -e 'tell application "Terminal" to do script "
    source /Users/sceneste/.bashrc && \
        vim -c    \"vsplit ~/sandbox/ | split $WORK_DIR | split \"    $WORK_DIR/"'
#source /Users/sceneste/.bashrc && vim -c "hsplit" ~/sandbox/


####exit --- doesn't work because it exits only current bash script running
