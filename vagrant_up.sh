## Master

cd master
vagrant destroy -f; vagrant up

TOKEN=`vagrant ssh --command "sudo kubeadm token list" | grep authentication | head -n 1 | awk {'print $1'} | awk -F: {'print $2'}`
cd ../pods

vagrant destroy -f; vagrant up
