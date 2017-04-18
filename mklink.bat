set HOMEPATH="C:\Users\gen"
SETPATH =C:\Users\gen\vim74-kaoriya-win64
mklink %HOMEPATH%"\.vimrc" %HOMEPATH%"\dotfiles\.vimrc"
mklink %HOMEPATH%"\.vimperatorrc" %HOMEPATH%"\dotfiles\.vimperatorrc"
mklink %HOMEPATH%"\.bashrc" %HOMEPATH%"\dotfiles\.bashrc"
mklink %HOMEPATH%"\.bash_profile" %HOMEPATH%"\dotfiles\.bash_profile"
mklink %HOMEPATH%"\.bash_history" %HOMEPATH%"\dotfiles\.bash_history"

