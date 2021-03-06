
### Get kubectl=1.20.7

```
curl -Lo kubernetes-client-windows-amd64.tar.gz https://storage.googleapis.com/kubernetes-release/release/v1.20.7/kubernetes-client-windows-amd64.tar.gz
tar -xzvf kubernetes-client-windows-amd64.tar.gz
move kubernetes\client\bin\kubectl.exe .\kubectl.
```


### Get kustomize 3.2.3

```
curl -Lo ./kustomize.v3.2.3 https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.2.3/kustomize_kustomize.v3.2.3_windows_amd64.exe
```

### Get Kubeflow manifest v1.4.0

```
curl -Lo v1.4.0.tar.gz https://github.com/kubeflow/manifests/archive/refs/tags/v1.4.0.tar.gz
tar xzf v1.4.0.tar.gz

// we copy this file into manifests-1.4.0 for simplify installation process
copy kustomize.v3.2.3 manifests-1.4.0\kustomize.v3.2.3

cd manifests-1.4.0
kustomize.v3.2.3 build --load_restrictor=none example > yaml.yaml
cd ..
kubectl apply -f manifests-1.4.0\yaml.yaml # maybe we need to run this multiple times
```
