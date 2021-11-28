## NOTE: this doc is mainly for demonstrating instructions on how we install kubeflow on windows
# not the windows's batch script that you can run and install everything.

# get kubectl=1.20.7
curl -Lo kubernetes-client-windows-amd64.tar.gz https://storage.googleapis.com/kubernetes-release/release/v1.20.7/kubernetes-client-windows-amd64.tar.gz
tar -xzvf kubernetes-client-windows-amd64.tar.gz
move kubernetes\client\bin\kubectl.exe .\kubect.

# kustomize 3.2.3
curl -Lo ./kustomize.v3.2.3 https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.2.3/kustomize_kustomize.v3.2.3_windows_amd64.exe
curl -Lo v1.3.1.tar.gz https://github.com/kubeflow/manifests/archive/refs/tags/v1.3.1.tar.gz
tar xzf v1.3.1.tar.gz
copy kustomize.v3.2.3 manifests-1.3.1\kustomize.v3.2.3
cd manifests-1.3.1
kustomize.v3.2.3 build --load_restrictor=none example > yaml.yaml
cd ..
kubectl apply -f manifests-1.3.1\yaml.yaml # maybe we need to run this multiple times
