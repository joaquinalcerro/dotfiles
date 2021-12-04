PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ ) "
PROMPT+='%(3~|..%2~|%~) $(git_super_status)'
