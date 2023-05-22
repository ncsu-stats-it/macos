set     red="%{\033[0;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[0;33m%}"
set    blue="%{\033[0;34m%}"
set magenta="%{\033[0;35m%}"
set    cyan="%{\033[0;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}"
set prompt="${red}%n@%m:${blue}%C $ ${end} "
# set prompt="${red}%n@mac:${blue}%C $ ${end} "
unset red green yellow blue magenta cyan white end

if ( -f ~/.csh_aliases ) then
	source ~/.csh_aliases
endif

# This is needed to change SHELL to "zsh" via SSH
# SFTP connections need to stay with Default SHELL.
if  ( $?TERM ) then
	## Need (2) if statements for SCP Connections
	if ! ( "$TERM" == "") then
        	setenv SHELL /bin/zsh
        	exec /bin/zsh
	endif
endif
