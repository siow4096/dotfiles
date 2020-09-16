alias hf='git hf'
alias flip='cfn-flip'
alias vpn-up='nmcli --ask con up id lt.ovpn.netflix.net.201908 && newt vpn-check'
alias vpn-down='nmcli con down id lt.ovpn.netflix.net.201908'
alias vpn-status='nmcli connection show --active | grep lt.ovpn.netflix.net.201908'
alias weep-network='sudo iptables-restore < ~/src/nflx/weep/weep-iptables.txt'
eval "$(NEWT_OFFLINE=1 NEWT_QUIET=1 newt --completion-script-zsh)"
function ngo {
    xdg-open http://go.netflix.com/$1
}
function jira {
    xdg-open https://jira.netflix.net/browse/$1
}
function acro {
    egrep -i "^\\w+$1" ~/.netflix/acronyms
}
function awscreds {
    if [[ $# -ne 1 ]]; then
        echo "usage: awscreds [list|ROLENAME]"
    else
        if [[ "$1" == "list" ]]; then
            newt --app-type awscreds roles
        else
            newt --app-type awscreds refresh -r $1 $1
        fi
    fi
}
function export_awscreds {
   eval $(newt --app-type awscreds export -r $1)
}
