@echo off

setlocal enableextensions enabledelayedexpansion

rem These folders needs to be created and owned by the host user
if not exist "debug" md "debug"
if not exist "web\dist" md "web\dist"

if exist "config\config.yml" (
  echo config/config.yml already exists, skipping initialization 1>&2
) else (
  echo initializing config\config.yml 1>&2
  copy "config\config.yml.example" "config\config.yml"
)
