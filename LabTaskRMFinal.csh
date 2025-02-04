#!/bin/tcsh



# -- 1. 
mkdir -p ~/LabTask1

# -- 2. 
echo "User ID: `id -u`"            >  ~/LabTask1/MyStuff
echo "Primary Group ID: `id -g`"   >> ~/LabTask1/MyStuff
echo "Groups: `id -Gn`"           >> ~/LabTask1/MyStuff
echo "Shell: $SHELL"              >> ~/LabTask1/MyStuff
echo "Home Directory: $HOME"      >> ~/LabTask1/MyStuff
echo "PATH: $PATH"                >> ~/LabTask1/MyStuff

# -- 3. 
echo '#!/bin/tcsh'                                        >  ~/LabTask1/GetMyStuff
echo 'echo "User ID: `\`id -u\``"'                        >> ~/LabTask1/GetMyStuff
echo 'echo "Primary Group ID: `\`id -g\``"'               >> ~/LabTask1/GetMyStuff
echo 'echo "Groups: `\`id -Gn\``"'                        >> ~/LabTask1/GetMyStuff
echo 'echo "Shell: $SHELL"'                               >> ~/LabTask1/GetMyStuff
echo 'echo "Home Directory: $HOME"'                       >> ~/LabTask1/GetMyStuff
echo 'echo "PATH: $PATH"'                                 >> ~/LabTask1/GetMyStuff

# executable
chmod +x ~/LabTask1/GetMyStuff

# -- 4. 
echo "When a program is started from the shell prompt, its parent process is the shell."    >  ~/LabTask1/MyProcesses
echo "The shell’s parent process is typically the login manager (e.g. login, sshd, xterm)." >> ~/LabTask1/MyProcesses
echo "Finally, that login manager is a child of init (PID 1) or systemd (on modern Linux)."  >> ~/LabTask1/MyProcesses

# -- 5. 
echo "ls -A | wc -l" > ~/LabTask1/MyPipe

# -- Print 
echo "All required files have been created in ~/LabTask1:"
ls -l ~/LabTask1

