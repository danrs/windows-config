# Save this in C:\Users\dsmith\Documents\WindowsPowerShell\Microsoft.Powershell_profile.ps1

# aliases for common commands
set-alias npp "C:\Program Files\Notepad++\notepad++.exe"
set-alias py ipython
set-alias gti git

# launch WSL vim with `lvim`
# fix arrow key handling with term setting
function lvim ($File){
$File = $File -replace "\\", "/" -replace " ", "\ "
bash -c "vim -c 'set term=builtin_ansi' $File"
}
