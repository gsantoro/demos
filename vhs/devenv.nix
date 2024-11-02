{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git 
    pkgs.bash 
    pkgs.gum  
    pkgs.jq  
    pkgs.nushell  
    pkgs.vhs  
  ];
}
