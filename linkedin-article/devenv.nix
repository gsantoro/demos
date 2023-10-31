{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git 
    pkgs.httpie
    pkgs.curl
    pkgs.go-task
    pkgs.gum
  ];
}
