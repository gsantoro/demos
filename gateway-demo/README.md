# Project: ingress-demo

## Requirements
In order to work in the project you need to have:

- [devenv](https://devenv.sh/) installed.
- [direnv](https://direnv.net/docs/hook.html) configured to work with your terminal.


If you have [Task](https://github.com/go-task/task) installed already, you can install Devenv with 

```bash
task devenv:install
```

If you have brew installed already, you can install direnv with:

```bash
task direnv:install
```

## Getting started
Setup the cluster with Traefik as Gateway controller

```bash
task my-app:up
```

This will also port forward the Traefik port for the gateway.

in a separate shell, run one of the scenarios

```bash
task my-app:mirror-request
task my-app:mirror-request:client
```

You might need to retry the client if the service is not up and running yet