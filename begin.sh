echo 'set number' >> ~/.vimrc
cat <<EOF >> ~/.bashrc
#[ thanhnn17
#I. Export: do, now, try, sl
export do='--dry-run=client -o yaml'
export now='--force --grace-period 0'
export try='--restart=Never --rm -it'
export sl='--show-labels'
#II. View: context, get, describe, logs, exec
#1. context
alias kc='kubectl config'
alias kcl='kubectl config get-contexts'
alias kcn='kubectl config set-context --current --namespace'
alias kcv='kubectl config view'
#2. get
alias kg='kubectl get'
alias kga='kubectl get all'
alias kgp='kubectl get pod'
alias kgd='kubectl get deploy'
alias kgs='kubectl get svc'
#3. describe
alias kd='kubectl describe'
#4. logs
alias kl='kubectl logs'
#5. exec
alias kx='kubectl exec -it'
#III. Operations: apply, delete, edit, create+run, rollout, others
#1. apply
alias kaf='kubectl apply -f'
#2. delete
alias kdel="kubectl delete \$now"
#3. edit
alias ke='kubectl edit'
#4. create + run
alias kcr='kubectl create'
alias krun="kubectl run \$try"
#5. rollout
alias kr='kubectl rollout'
#6. others: ktest, ...
alias ktest="kubectl run --image=nginx:alpine \$try -- sh -c"
#]
EOF
source ~/.bashrc

#cd /opt
#wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=12GqIk88dcBf0o2Vxr_orq6VYN0XUtJjO' -O course.tar.gz
#tar -xzvf course.tar.gz
#cd course

k cluster-info && sleep 1
kcl && sleep 1
kga && sleep 1
kg nodes -o wide && sleep 1
kg ns && sleep 1



