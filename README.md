## Run 

1. sudo usermod -a -G docker $USER
2. Start the github action runner by command: `cd actions-runner && sudo ./svc.sh install $USER`
2. Then run `sudo ./svc.sh start`