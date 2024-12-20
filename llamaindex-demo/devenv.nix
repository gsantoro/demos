{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git

    

    # tools
    pkgs.gum
    pkgs.cookiecutter
    pkgs.go-task
  ];

  
  languages.python = {
    enable = true;
    package = pkgs.python312;
    uv = {
      enable = true;
      sync.enable = true;
    };
    venv.enable = true;
  };
  
}
