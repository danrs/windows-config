# windows-config
This repo contains the scripts and resources needed to set up a new windows installation

## Programs to Install
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [git](https://git-scm.com/download/win)
- [Notepad++](https://notepad-plus-plus.org/downloads/)
- [Python](https://www.python.org/downloads/windows/) or [Anaconda](https://www.anaconda.com/distribution/)
- [ConEmu](https://conemu.github.io/)

## Manual setup
### WSL Ubuntu
In powershell, run:
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```
Reboot when prompted, then install your chosen distribution from the windows store.
```
# WSL root location in windows file system:
# (note that editing WSL files from windows is NOT SUPPORTED)
C:\Users\dsmith\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState
# Windows C:\ location in WSL file system:
/mnt/c
```

### ConEmu
Import `ConEmu.xml` for my settings. Do this after installing WSL ubuntu and git.
