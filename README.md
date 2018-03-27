# node-gce-k8s

# GCE Automation

This project automates GCE configuration. It helps in automatically setting up Bastion.
# Prerequisite
Configure Gcloud authentication
Copy terraform binary under installation folder to /usr/bin

# Creating Bastion, VPN , Firewall

Execute
cd nodes
./run.sh

# Kubernetes cluster creation.
Use can create kubernetes cluster using GCE kubernetes option.

# Node app deployment
Once k8s cluster is created download the kube config file from GCE and check k8s is up and running.

To deploy specific branch of the node app https://github.com/scotch-io/node-todo

Execute
cd k8s
./execute-k8s.sh create feature

here feature is the branch name in github.

Once deployment is done execute

kubectl get svc to find the loadbalancer url of the app.

To delete specific k8s deployment

./execute-k8s.sh delete feature


