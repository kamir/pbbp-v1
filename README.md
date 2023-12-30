# pbbp-v1
Personal Bot Blueprint - verion 1.0

This is a very generic project for keeping the parts of an evolving personal bot ecosystem together.

## Step 1

```
export my-bot-name="MKBOT"
git clone --recursive https://github.com/kamir/pbbp-v1 $my-bot-name
cd $my-bot-name/bin
```

## Step 2
Configure the Python environment in _**assistent/init-venv-dev.h**_ and in _**bin/init-venv.h**_

This allows us to switch between a well working virtual environment and one for development activities.

## Step 3
Run _**bootstrap.sh**_.