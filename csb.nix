with import <nixpkgs> {};
 
stdenv.mkDerivation {
    name = "csb";
    buildInputs = [
        chromium
        htop
    ];
    shellHook = ''
        export PATH="flutter/bin:flutter/bin/cache/dart-sdk/bin:$PATH"
        export CHROME_EXECUTABLE="chromium-browser"
    '';
}