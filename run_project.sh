#!/bin/sh -x
# ===== shebang
# ===== zsh run_project.sh
cd build/web
python3 -m http.server 3000
#$PYTHON_START_SERVER
#flutter run -d chrome