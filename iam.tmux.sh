
session="iam"

goTo() {
	base_path="~/retailrocket/iam"

	"cd " + base_path + $1
}

createWindow() {
	tmux new-window
	tmux rename-window $1 # 1
}

tmux new-session -d -s $session

createWindow "backend"
createWindow "backend-editor"
createWindow "frontend"
createWindow "frontend-editor"
createWindow "just-terminal"
createWindow "tests"
createWindow "sample-backend"
createWindow "sample-frontend"

tmux kill-window -t 0

tmux send-keys -t "backend" C-n 'cd ~/retailrocket/iam/backend/src/UsersPortal/RetailRocket.UsersPortal.App// && clear && dotnet run' C-m
tmux send-keys -t "backend-editor" C-n 'cd ~/retailrocket/iam/backend/src/UsersPortal/ && clear && nvim .' C-m
tmux send-keys -t "frontend" C-n 'cd ~/retailrocket/iam/frontend/ && clear && npm run dev' C-m
tmux send-keys -t "frontend-editor" C-n 'cd ~/retailrocket/iam/frontend/ && clear && nvim .' C-m
tmux send-keys -t "just-terminal" C-n 'cd ~/retailrocket/iam/ && clear' C-m
tmux send-keys -t "tests" C-n 'cd ~/retailrocket/iam/backend/tests/ && clear && nvim' C-m
tmux send-keys -t "sample-backend" C-n 'cd ~/retailrocket/iam/samples/backend/RetailRocket.Iam.Demo.App/ && clear && dotnet run' C-m
tmux send-keys -t "sample-frontend" C-n 'cd ~/retailrocket/iam/samples/frontend/ && clear && npm run dev' C-m

tmux a -t $session
