@echo off

::::::::::::::
:: Settings ::
::::::::::::::

:: Directory where we want to mount the USB in the windows subsystem for linux
:: You will need to update your host files if you change this
set mountPoint=/mnt/bobokey

::::::::::::::::::::::::::::::::::
:: Get down to the nitty gritty ::
::::::::::::::::::::::::::::::::::

:: Gets drive letter
set driveLetter=%CD:~0,1%

:: Translates windows path to the new mount location
set dir=%mountPoint%/%CD:~3%

:: Replace backslashes in our new path
set dir=%dir:\=/%

:: Tell wsl to mount the drive and then execute the addHosts shell script
echo Mounting usb in WSL
wsl sudo mkdir -p %mountPoint% ; sudo mount -t drvfs %driveLetter%: '%mountPoint%' ; %dir%/addHosts %dir%

echo Done!
@pause