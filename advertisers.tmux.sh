#!/bin/bash

# Session Name
session="advertisers"

tmux new-session -d -s $session

# create frontend window
tmux new-window
tmux rename-window 'frontend' # 1

# create backend window
tmux new-window
tmux rename-window 'backend' # 2

# create backend window
tmux new-window 
tmux rename-window 'tests' # 3

# create just terminal
tmux new-window
tmux rename-window 'just terminal' # 4

# create frontend editor
tmux new-window
tmux rename-window 'frontend-editor' # 5

# create backend editor
tmux new-window
tmux rename-window 'backend-editor' # 6

# create tests editor
tmux new-window
tmux rename-window 'tests' # 7

tmux send-keys -t 1 C-n 'cd ~/retailrocket/advertisers/frontend && clear && npm run dev' C-m
tmux send-keys -t 2 C-n 'cd ~/retailrocket/advertisers/backend/Apps/SmartPlacements.Advertisers.Api/ && clear && dotnet run' C-m
tmux send-keys -t 3 C-n 'cd ~/retailrocket/advertisers/backend/Tests/SmartPlacements.Advertisers.Tests/ && clear' C-m
tmux send-keys -t 4 C-n 'cd ~/retailrocket/advertisers/ && clear' C-m
tmux send-keys -t 5 C-n 'cd ~/retailrocket/advertisers/frontend/ && clear && nvim' C-m
tmux send-keys -t 6 C-n 'cd ~/retailrocket/advertisers/backend/ && clear && nvim' C-m
tmux send-keys -t 7 C-n 'cd ~/retailrocket/advertisers/backend/Tests/SmartPlacements.Advertisers.Tests/ && clear && nvim' C-m


# destroy default 0 window
tmux kill-window -t 0

tmux attach -t $session
