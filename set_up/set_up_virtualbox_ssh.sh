

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "arguments: <server name of VBOX>"
    echo "ssh -p 3022 username@127.0.0.1"
    exit
fi

SERVER=$1



VBoxManage modifyvm $SERVER --natpf1 "ssh,tcp,,3022,,22"
VBoxManage showvminfo $SERVER | grep 'Rule'
cp ~/.ssh/known_hosts ~/.ssh/known_hosts.bak
sed '/\[127\.0\.0\.1\]\:3022/d' ~/.ssh/known_hosts > ~/.ssh/known_hosts

