# Readme

## Requirements
1. Install [devenv.sh](https://devenv.sh/getting-started/)
2. Install [direnv](https://direnv.net/docs/installation.html#from-system-packages)
3. Configure direnv for [automatic shell activation](https://devenv.sh/automatic-shell-activation/)
4. Allow direnv to load environment variables from .envrc with `direnv allow`


## Run
Run the default command to create the ECK cluster

```
task
```

Once the cluster is up and running (this might take a couple of minutes),
you can forward the port of Kibana service with the following command

```
task eck:kibana:pf
```

you need to keep this terminal open for the port forwarding to keep working.

Then you can open a terminal at: https://localhost:5601 and provide the credentials:

```
username: elastic
password: <pass>
```

You can find the password at ./envs/eck/data/es.credentials.json

## More info
For more commands

```
task --list-all
```