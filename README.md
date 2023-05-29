# dokku cron-restart [![Build Status](https://img.shields.io/github/actions/workflow/status/dokku/dokku-cron-restart/ci.yml?branch=master&style=flat-square "Build Status")](https://github.com/dokku/dokku-cron-restart/actions/workflows/ci.yml?query=branch%3Amaster) [![IRC Network](https://img.shields.io/badge/irc-libera-blue.svg?style=flat-square "IRC Libera")](https://webchat.libera.chat/?channels=dokku)

Official cron-restart plugin for dokku.

## Requirements

- dokku 0.30.x+
- docker 1.8.x

## Installation

```shell
# on 0.30.x+
sudo dokku plugin:install https://github.com/dokku/dokku-cron-restart.git cron-restart
```

## Commands

    cron-restart:report <app> [--single-info-flag] # displays a cron-restart report for one or more apps
    cron-restart:set <app> <key> <value>           # set or clear a cron-restart property for an app
    cron-restart:show-config                       # show the generated config

## Usage

Help for any commands can be displayed by specifying the command as an argument to `cron-restart:help`. Plugin help output in conjunction with any files in the `docs/` folder is used to generate the plugin documentation. Please consult the `cron-restart:help` command for any undocumented commands.

### Basic Usage

### show the generated config

```shell
# usage
dokku cron-restart:show-config 
```

Shows the generated crontab config relevant to cron-restart:

```shell
dokku cron-restart:show-config
```

### displays a cron-restart report for one or more apps

```shell
# usage
dokku cron-restart:report <app> [--single-info-flag]
```

flags:

- `--schedule`: show the service configuration directory

Get cron-restart report for all apps:

```shell
dokku cron-restart:report
```

Get cron-restart report for an app:

```shell
dokku cron-restart:report lollipop
```

You can also retrieve a specific piece of report info via flags:

```shell
dokku cron-restart:report lollipop --schedule
```

### set or clear a cron-restart property for an app

```shell
# usage
dokku cron-restart:set <app> <key> <value>
```

Schedule a restart:

> 'value' is a crontab expression, eg. `0 3 * * *` for each day at 3am

```shell
dokku cron-restart:set lollipop schedule '0 3 * * *'
```
