# miniforge

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=yanndebray/miniforge&file=run.m)


Install packages with miniforge on MATLAB Online

## Steps to follow in MATLAB Online

```matlab
% retrieve and execute miniforge bash install script
websave('Miniforge3-Linux-x86_64.sh','https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh')
!bash Miniforge3-Linux-x86_64.sh -b
% use conda-forge community repo to retrieve pythonocc-core
!/home/matlab/miniforge3/bin/conda install -c conda-forge pythonocc-core=7.8.1
% set python connection out-of-process
pyenv("ExecutionMode","OutOfProcess")
% point to the new Python interpreter coming with miniforge
pyenv("Version","/home/matlab/miniforge3/bin/python3")
% test the install
box = py.OCC.Core.BRepPrimAPI.BRepPrimAPI_MakeBox(10, 20, 30)
```


## More about miniforge install script

```bash
$bash Miniforge3-Linux-x86_64.sh -h

usage: Miniforge3-Linux-x86_64.sh [options]

Installs Miniforge3 24.7.1-2

-b           run install in batch mode (without manual intervention),
             it is expected the license terms (if any) are agreed upon
-f           no error if install prefix already exists
-h           print this help message and exit
-p PREFIX    install prefix, defaults to /home/matlab/miniforge3, must not contain spaces.
-s           skip running pre/post-link/install scripts
-u           update an existing installation
-t           run package tests after installation (may install conda-build)
```