tmux has-session -t HwwNews
if [ $? = 0 ]
then
    tmux new-session -s HwwNews -n editor -d
    tmux send-keys -t HwwNews 'cd ~/public_html/tp3.in/typo3conf/ext/hwwnews' C-m
    tmux send-keys -t HwwNews 'vim' C-m
    tmux split-window -v -t HwwNews
    tmux select-layout -t HwwNews main-horizontal
    tmux send-keys -t HwwNews:1.2 'cd ~/public_html/tp3.in/typo3conf/ext/hwwnews' C-m
    tmux new-window -n console -t HwwNews
    tmux send-keys -t HwwNews:2 'cd ~/public_html/tp3.in/typo3conf/ext/hwwnews' C-m
    tmux select-window -t HwwNews:1
    tmux attach -t HwwNews
fi
tmux attach -t development
