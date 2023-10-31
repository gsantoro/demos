# Readme

## Requirements
1. Install [devenv.sh](https://devenv.sh/getting-started/)
2. Install [direnv](https://direnv.net/docs/installation.html#from-system-packages)
3. Configure direnv for [automatic shell activation](https://devenv.sh/automatic-shell-activation/)
4. Allow direnv to load environment variables from .envrc with `direnv allow`
5. Provide env variables for LinkedIn authorization as described at `./envs/linkedin/Readme.md`

## Run
From the current root directory

```
task li:post
```

This will post a sample article. 

You can change the text and url of the article from Taskfile.yml