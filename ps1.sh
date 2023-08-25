# promptを以下にする~
# gen:~/work/02_develop/playbook# 
# root:/home/gen/work/02_develop/playbook# 
PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\\$ '
echo 'export PS1="'${PS1}'"' >> ~/.bashrc
