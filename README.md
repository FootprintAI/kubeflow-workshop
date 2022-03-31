### kubeflow workshop

This workshop is for educational purpose, please contact <partnership@footprint-ai.com> if you want to introduce kubeflow to your orgainzation.


### Pipelines

we have listed few good-for-beginner pipelines to get started, please check [Pipeline](pipelines) folder

### Tutorials

We have listed some tutorials on how advanced use kubeflow and it's components, please check [Tutorials](tutorials) folder

### Prerequsite

```
CPU: 4 Core+
Memory: 16G+
Gpu: Optional
```

### CLI Installation

* [multikf](https://github.com/footprintai/multikf): a simplified cli tool to install one or many kubeflow clusters in the same host.


### Script Installation (w/o GPU)

To simplify the installation process, we use `root` to install everthing (although it is NOT recommended using in production environment, use it on your own risk)

* [run-as-root](install/runasroot.sh)
* [dockerd](install/dockerd.sh)


To install kubeflow, you need to have a running kubernetes cluster, either an existing running one or you can just create one. In this example, we provides both minikube installation and kind installation for creating a cluster, you can just pick either one.

* [minikube](install/minikube.sh)
* [kind](install/kind.sh)

Since KinD use containerd not dockerd as its runtime, so we have to use `emissary` as Kubeflow/Pipeline's default executor.) See script below to replace its default runtime executor (tested in v1.4)

* [emissary](install/use-emissary-default-executor.sh)


We then install kubeflow on the cluster we just created.

* [kubeflow-v1.2](install/kubeflow.v12.sh) -- out of dated
* [kubeflow-v1.3](install/kubeflow.v13.sh)
* [kubeflow-v1.4](install/kubeflow.v14.sh)

### For Windows user

We have scrips to Windows user to install kubeflow, please noted that you have to use Windows 10 Pro or later version which supports Hyper-V.

* [dockerd](install/windows/docker.bat.md)
* [kind](install/windows/kind.bat.md)
* [kubeflow-v1.4](install/windows/kubeflow.v14.bat.md)
