{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.kubernetes-helm
    pkgs.go-task
    pkgs.curl
    pkgs.k3d # latest in nix 5.4.4. latest v5.6.0 -> install manually if you want latest version from k8s.k3d.taskfile.yml at deps
  ];
}
