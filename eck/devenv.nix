{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.kubernetes-helm
    pkgs.go-task
    pkgs.curl
    pkgs.k3d
    pkgs.kubectl
    pkgs.kustomize
  ];
}
