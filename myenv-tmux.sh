tmux has-session -t myenv
if [ $? != 0 ]
then
 tmux new-session -s myenv -n nvim -d
 tmux send-keys -t myenv 'cd ~/Projects' C-m
 tmux send-keys -t myenv 'nvim' C-m
 tmux split-window -h -t myenv
 # tmux select-layout -t myenv main-horizontal
 # tmux send-keys -t myenv:1.2 'cd ~/Projects' C-m
 tmux new-window -n console -t myenv
 tmux send-keys -t myenv:1 'cd ~/Projects' C-m
 tmux select-window -t myenv:0
 tmux select-pane -t myenv:0.0
fi
tmux attach -t myenv
