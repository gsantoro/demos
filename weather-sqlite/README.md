# Readme

## How to get started
You need to have the following tools installed and configured:
- Devenv (which includes installing Nix)
- Direnv
- Taskfile

You can find more information about installing Nix at this article that I wrote [Effortless Python Development with Nix](https://cloudnativeengineer.substack.com/p/effortless-python-development-with-nix).

Now you need to download the main dataset:
- [london weather data](https://www.kaggle.com/datasets/emmanuelfwerr/london-weather-data?resource=download)

and save it as a file `data/london_weather.csv`.

Once those tools are installed and configured and the dataset downloaded:

```bash
cd envs/weather # load environment variables
task base:up # import data into a sqlite db
```

Then you can install third-party extension with the following tasks:
- `sqlite-xsv:install`
- `sqlite-url:install`
- `sqlean:install`