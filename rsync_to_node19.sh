#! /bin/bash
rsync -e 'ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null' \
    --exclude-from=.gitignore -avz ../ pop@114.214.166.247:code/2017_11/gittest


