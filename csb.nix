with import <nixpkgs> {};
 
stdenv.mkDerivation {
    name = "csb";
    buildInputs = [
        chromium
        wayland
    ];
    shellHook = ''
        export PATH="flutter/bin:flutter/bin/cache/dart-sdk/bin:$PATH"
        export CHROME_EXECUTABLE="chromium-browser"
        export PYTHON_START_SERVER="python3 -m http.server 3000"
        export WAYLAND_DISPLAY="wayland-1"
    '';
}