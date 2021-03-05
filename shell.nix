let
    pkgs = import <nixpkgs> {};
in pkgs.mkShell rec {
    name = "wochap.github.io";
    buildInputs = with pkgs; [
        nodejs-10_x
        (yarn.override { nodejs = nodejs-10_x; })
    ];
}