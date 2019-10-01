# Save this in C:\Users\dsmith\Documents\WindowsPowerShell\Microsoft.Powershell_profile.ps1

# aliases for common commands
set-alias npp "C:\Program Files\Notepad++\notepad++.exe"
set-alias py ipython
set-alias gti git

# launch WSL vim with `vim`
# `set term=builtin_ansi` fixes bug with arrow keys in WSL vim in conEmu
function vim ($File){
$File = $File -replace "\\", "/" -replace " ", "\ "
bash -c "vim -c 'set term=builtin_ansi' $File"
}
