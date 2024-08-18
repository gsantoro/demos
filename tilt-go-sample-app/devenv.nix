{ pkgs, lib, config, inputs, ... }:

{
  
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git 
    pkgs.golangci-lint 
    pkgs.crane 
    pkgs.dive 
  ];

  languages.go = {
    enable = true;
    package = pkgs.go_1_23;
  };
}
