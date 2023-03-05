#!/bin/sh -x
# ===== shebang
# ===== zsh install_flutter.sh
#wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.7.6-stable.tar.xz
#tar xfv flutter_linux_3.7.6-stable.tar.xz
#rm -v flutter_linux_3.7.6-stable.tar.xz
# =====
# https://codesandbox.io/docs/learn/repositories/limitations#nixos
#install chromium browser via nixpkgs => csb.nix file
# CodeSandbox natively supports the Nix(opens in a new tab) package manager. 
# To install a package, you can define a file in the root of your project
# called csb.nix and configure which packages should be
# automatically installed from the nix package store(opens in a new tab).
# See an example configuration below:
# csb.file sample content :
#       with import <nixpkgs> {};
#       stdenv.mkDerivation {
#           name = "csb";
#           buildInputs = [
#               postgres
#               htop
#           ];
#           shellHook = ''
#               export PATH="$PWD/node_modules/.bin/:$PATH"
#           '';
#       }
# This automatically installs Postgres and htop
# the next time you open a terminal.
# =====
# ? howto put in .env file ? => in csb.file shellHook
# export CHROME_EXECUTABLE="chromium-browser"
# =====
# ? howto put in .env file ? => in csb.file shellHook
# export PATH="flutter/bin:flutter/bin/cache/dart-sdk/bin:$PATH"
#  ➜  workspace git:(draft/nice-wildflower) ✗ export PATH="flutter/bin:flutter/bin/cache/dart-sdk/bin:$PATH"
#  ➜  workspace git:(draft/nice-wildflower) ✗ echo $PATH
#  flutter/bin:
#  flutter/bin/cache/dart-sdk/bin:
#  /project/home/dominique-quevy/.nix-profile/bin:
#  /nix/var/nix/profiles/default/bin:
#  /opt/pitcher/bin:
#  /usr/local/sbin:
#  /usr/local/bin:
#  /usr/sbin:
#  /usr/bin:
#  /sbin:/bin
# =====
export PATH="$PATH:`pwd`/flutter/bin"
df
# ls flutter
flutter config --enable-web --no-enable-linux-desktop --no-enable-windows-desktop --no-enable-android --no-enable-ios --no-analytics
which flutter dart python3
flutter doctor -v
git remote -v
echo "which flutter dart chromium-browser python3"
echo "chromium-browser --enable-features=UseOzonePlatform --ozone-platform=wayland --verbose"