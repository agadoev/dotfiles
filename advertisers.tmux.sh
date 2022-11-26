#!/bin/bash

session="advertisers"

docker stop $(docker ps -aq)

docker start test-mongo


tmux new-session -d -s $session

set-hook -t $session session-closed killall dotnet && killall node

tmux new-window
tmux rename-window frontend

tmux new-window
tmux rename-window backend

tmux new-window
tmux rename-window just-terminal

tmux new-window
tmux rename-window mongo

tmux new-window
tmux rename-window frontend-instance

tmux new-window
tmux rename-window backend-instance


tmux send-keys -t frontend C-n 'cd ~/retailrocket/advertisers/frontend/ && clear && nvim' C-m
tmux send-keys -t backend C-n 'cd ~/retailrocket/advertisers/backend/ && clear && nvim' C-m
tmux send-keys -t mongo C-n 'mongosh mongodb://localhost:27017/advertisers' C-m
tmux send-keys -t frontend-instance C-n 'cd ~/retailrocket/advertisers/frontend && clear && npm run dev' C-m
tmux send-keys -t backend-instance C-n 'cd ~/retailrocket/advertisers/backend/Apps/SmartPlacements.Advertisers.Api/ && clear && dotnet run' C-m


tmux join-pane -h -s frontend-instance -t backend-instance

tmux rename-window instances

# destroy default 0 window
tmux kill-window -t 0

tmux attach -t $session
