
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
createWindow "frontend"
createWindow "just-terminal"
createWindow "tests"
createWindow "mongo"
createWindow "backend-instance"
createWindow "frontend-instance"
createWindow "sample-backend-instance"
createWindow "sample-frontend-instance"

tmux kill-window -t 0

tmux send-keys -t "backend" C-n 'cd ~/retailrocket/iam/backend/src/UsersPortal/ && clear && nvim' C-m
tmux send-keys -t "frontend" C-n 'cd ~/retailrocket/iam/frontend/ && clear && nvim' C-m
tmux send-keys -t "just-terminal" C-n 'cd ~/retailrocket/iam/ && clear' C-m
tmux send-keys -t "tests" C-n 'cd ~/retailrocket/iam/backend/tests/ && clear && nvim' C-m
tmux send-keys -t "mongo" C-n 'clear && mongosh mongodb://localhost:27017/usersPortal' C-m
tmux send-keys -t "frontend-instance" C-n 'cd ~/retailrocket/iam/frontend/ && clear && npm run dev' C-m
tmux send-keys -t "backend-instance" C-n 'cd ~/retailrocket/iam/backend/src/UsersPortal/RetailRocket.UsersPortal.App// && clear && dotnet run' C-m
tmux send-keys -t "sample-backend" C-n 'cd ~/retailrocket/iam/samples/backend/RetailRocket.Iam.Demo.App/ && clear && dotnet run' C-m
tmux send-keys -t "sample-frontend" C-n 'cd ~/retailrocket/iam/samples/frontend/ && clear && npm run dev' C-m

tmux a -t $session
