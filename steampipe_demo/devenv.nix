{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git

    # tools
    pkgs.gum
    pkgs.cookiecutter
    pkgs.go-task

    pkgs.steampipe
    pkgs.duckdb
  ];

  
}
