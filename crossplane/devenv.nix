{ pkgs, lib, config, inputs, ... }:

{
  packages = [ 
    pkgs.git 
    pkgs.gum
    pkgs.kubernetes-helm
    pkgs.k3d
    pkgs.awscli2
    pkgs.dotenvx
  ];

  dotenv.disableHint = true;

  # Need to run from ./envs/crossplane
  scripts.crossplane.exec = ''
    task crossplane
  '';
}
