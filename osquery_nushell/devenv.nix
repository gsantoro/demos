{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git

    # tools
    pkgs.gum
    pkgs.cookiecutter
    pkgs.go-task
    pkgs.osquery
    pkgs.nushell
    pkgs.jq
    pkgs.fzf
  ];

  
}
