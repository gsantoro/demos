{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git

    # k8s
    pkgs.kubectl
    pkgs.k3d  
    pkgs.k9s
    
    # tools
    pkgs.gum
    pkgs.go-task
    pkgs.jq
  ];

  
}
