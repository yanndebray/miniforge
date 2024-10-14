% retrieve and execute miniforge bash install script
websave('Miniforge3-Linux-x86_64.sh','https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh')
!bash Miniforge3-Linux-x86_64.sh -b
% use conda-forge community repo to retrieve pythonocc-core
!/home/matlab/miniforge3/bin/conda install -c conda-forge -y pythonocc-core=7.8.1
% set python connection out-of-process
pyenv("ExecutionMode","OutOfProcess")
% point to the new Python interpreter coming with miniforge
pyenv("Version","/home/matlab/miniforge3/bin/python3")
% test the install
box = py.OCC.Core.BRepPrimAPI.BRepPrimAPI_MakeBox(10, 20, 30)
