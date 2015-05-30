# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: http://bbs.archlinux.org/viewtopic.php?pid=521888#p521888

#if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

#PROMPT='%B%{$fg[grey]%}┌─[%{$fg[$NCOLOR]%}%n%{$fg[grey]%}@%{$fg[cyan]%}%m%{$fg[grey]%}] - [%b%{$fg[yellow]%}%~/%{$fg[grey]%}%B]%b
#%{$fg[grey]%}%B└─[%{$fg[magenta]%}$(git_prompt_info)%(!.#.$)%{$fg[grey]%}]%{$reset_color%} '
##RPROMPT='[%*]'

#PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{\e[0;33m%}'%D{"%Y-%m-%d %I:%M:%S"}%b$'%{\e[0;34m%}%B]%b%{\e[0m%}
#%{\e[0;34m%}%B└─%B[%{\e[1;35m%}$%{\e[0;34m%}%B]%{\e[0m%}%b '


# Based on ~/.oh-my-zsh/themes/tjkirch.zsh-theme
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function host_name {
    if [ -z $SCHROOT_CHROOT_NAME ]; then
        echo %m
    else
        echo "$SCHROOT_CHROOT_NAME -- an schroot on %m"
    fi
}

function prompt_char {
	if [ $UID -eq 0 ]; then 
        echo "%{$fg[red]%}#%{$reset_color%}"
    else 
        echo "%{$fg_bold[magenta]%}$%{$reset_color%}"
    fi
}

#PROMPT='%{$fg_bold[cyan]%}┌─[%{$fg_bold[white]%}%n%{$fg_bold[magenta]%}@%{$fg_bold[white]%}%m%{$fg_bold[cyan]%}]%{$fg[yellow]%} %{$fg_bold[blue]%}%~/%{$reset_color%}$(git_prompt_info)
PROMPT='%{$fg_bold[cyan]%}┌─[%{$fg_bold[white]%}%n%{$fg_bold[magenta]%}@%{$fg_bold[white]%}%_$(host_name)%{$fg_bold[cyan]%}]%{$fg[yellow]%} %{$fg_bold[blue]%}%~/%{$reset_color%}$(git_prompt_info)
%{$fg_bold[cyan]%}└─[%_$(prompt_char)%{$fg_bold[cyan]%}]%{$reset_color%} '

RPROMPT='%(?,,%{$fg[red]%}[$?] %{$reset_color%})'


# vi:set tw=0:

