set HOMEPATH="C:\Users\gen"
SETPATH =C:\Users\gen\vim74-kaoriya-win64
mklink %HOMEPATH%"\.vimrc" %HOMEPATH%"\dotfiles\.vimrc"
mklink %HOMEPATH%"\.vim" %HOMEPATH%"\dotfiles\.vim"
mklink %HOMEPATH%"\.vimperator" %HOMEPATH%"\dotfiles\.vimperator"
mklink %HOMEPATH%"\.vimperatorrc" %HOMEPATH%"\dotfiles\.vimperatorrc"
setx PATH "%PATH%;C:\Users\gen\vim74-kaoriya-win64"

