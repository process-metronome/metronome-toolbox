### Resources

### Kubernetes environment

#### Cluster and resource management

[Install kubectl](https://kubernetes.io/fr/docs/tasks/tools/install-kubectl/) utility on your linux machine.

```bash
$ sudo apt-get update && sudo apt-get install -y apt-transport-https
$ curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
$ echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
$ sudo apt-get update
$ sudo apt-get install -y kubectl
```

#### Certificates
[Install the cert-manager plugin](https://cert-manager.io/docs/usage/kubectl-plugin/) to manage your certificates in the cluster.

```bash
$ curl -L -o kubectl-cert-manager.tar.gz https://github.com/jetstack/cert-manager/releases/download/v1.0.1/kubectl-cert_manager-linux-amd64.tar.gz
$ tar xzf kubectl-cert-manager.tar.gz
$ sudo mv kubectl-cert_manager /usr/local/bin
```

Renew certificates as they expire with the CLI. Usually you are notified about the expiration of a certificate by email (when using letsencrypt.org)

```bash
$ kubectl get certificate
NAME                       READY   SECRET               AGE
example-com-tls            True    example-com-tls      1d

$ kubectl cert-manager renew example-com-tls
Manually triggered issuance of Certificate default/example-com-tls

$ kubectl get certificaterequest
NAME                              READY   AGE
example-com-tls-tls-8rbv2         False    10s
```

Renew all certificates in a given namespace.
```bash
$ kubectl cert-manager renew --namespace=app --all
```



