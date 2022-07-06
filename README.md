# docker
DockerfFile dependencies.

# kubernetes
1.  Install Kubelet
      sudo apt-get update
      sudo apt-get install -y apt-transport-https ca-certificates curl
      sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
      echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
      sudo apt-get update
      sudo apt-get install -y kubectl
2.  Install Minikube
      curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
      sudo dpkg -i minikube_latest_amd64.deb
3.  Kubectl Command
      # to show secret
      kubectl get secret
      
      # to show pod
      kubectl get pod
      
      # to show service (or IP equivalent)
      kubectl get service
      
      # to describe service
      kubectl describe service <service_name>
      
      # to create new deployment or service
      kubectl apply -f <your_yaml_file>
      
      # to get all information
      kubectl get all
    
  

