#!/bin/bash
cd project-camelcase-v0-0-0-1
git fetch && git reset origin/main --hard
source python3-virtualenv/bin/activate
pip install -r requirements.txt
systemctl daemon-reload
systemctl restart myportfolio
flask run --host=0.0.0.0
