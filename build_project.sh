#!/bin/sh -x
# ===== shebang
# ===== zsh build_project.sh
cd lib
flutter build web # --web-renderer canvaskit
cd ..