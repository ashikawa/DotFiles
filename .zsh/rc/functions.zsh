function whoiscon {
    whois $@ | iconv -f ISO-2022-JP -t UTF-8
}
alias whois="whoiscon"

function ssh-config {
  sed -n "/Host .*$1.*/,/^$/p" ~/.ssh/config
}