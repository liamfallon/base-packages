# Subpackage Upgrade Testing

## Packages

### Upstream Packages

We have two upstream packages, the "Wonderful Feature" package and the "Boring Middleware" package.These packages are in the [upstream packages](https://github.com/liamfallon/upstream-packages) repo.

<details>
<summary>Wonderful Feature Package</summary>

```
kpt pkg tree wonderful-feature
Package "wonderful-feature"
├── [Kptfile]  Kptfile wonderful-feature
├── [nginx-deployment.yaml]  Deployment wonderful-feature-root
├── [nginx-service.yaml]  Service wonderful-feature-root-svc
├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── [resourcegroup.yaml]  ResourceGroup default/inventory-59498074
├── Package "wf-dep-subpkg-1"
│   ├── [Kptfile]  Kptfile wonderful-feature-dep-subpkg-1
│   ├── [nginx-deployment.yaml]  Deployment wonderful-feature-subpkg-1
│   ├── [nginx-service.yaml]  Service wonderful-feature-subpkg-1-svc
│   ├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   └── Package "wf-dep-subsubpkg-1-1"
│       ├── [Kptfile]  Kptfile wonderful-feature-dep-subsubpkg-1-1
│       ├── [nginx-deployment.yaml]  Deployment wonderful-feature-subsubpkg-1-1
│       ├── [nginx-service.yaml]  Service wonderful-feature-subsubpkg-1-1-svc
│       └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── Package "wf-dep-subpkg-2"
│   ├── [Kptfile]  Kptfile wonderful-feature-dep-subpkg-2
│   ├── [nginx-deployment.yaml]  Deployment wonderful-feature-subpkg-2
│   ├── [nginx-service.yaml]  Service wonderful-feature-subpkg-2-svc
│   ├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   ├── Package "wf-dep-subsubpkg-2-1"
│   │   ├── [Kptfile]  Kptfile wonderful-feature-dep-subsubpkg-2-1
│   │   ├── [nginx-deployment.yaml]  Deployment wonderful-feature-subsubpkg-2-1
│   │   ├── [nginx-service.yaml]  Service wonderful-feature-subsubpkg-2-1-svc
│   │   └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   ├── Package "wf-dep-subsubpkg-2-2"
│   │   ├── [Kptfile]  Kptfile wonderful-feature-dep-subsubpkg-2-2
│   │   ├── [nginx-deployment.yaml]  Deployment wonderful-feature-subsubpkg-2-2
│   │   ├── [nginx-service.yaml]  Service wonderful-feature-subsubpkg-2-2-svc
│   │   └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   ├── Package "wf-dep-subsubsubpkg-2-2-1"
│   │   ├── [Kptfile]  Kptfile wonderful-feature-dep-subsubsubpkg-2-2-1
│   │   ├── [nginx-deployment.yaml]  Deployment wonderful-feature-subsubsubpkg-2-2-1
│   │   ├── [nginx-service.yaml]  Service wonderful-feature-subsubsubpkg-2-2-1-svc
│   │   └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   └── Package "wf-dep-subsubpkg-2-3"
│       ├── [Kptfile]  Kptfile wonderful-feature-dep-subsubpkg-2-3
│       ├── [nginx-deployment.yaml]  Deployment wonderful-feature-subsubpkg-2-3
│       ├── [nginx-service.yaml]  Service wonderful-feature-subsubpkg-2-3-svc
│       └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── Package "wf-dep-subpkg-3"
│   ├── [Kptfile]  Kptfile wonderful-feature-dep-subpkg-3
│   ├── [nginx-deployment.yaml]  Deployment wonderful-feature-subpkg-3
│   ├── [nginx-service.yaml]  Service wonderful-feature-subpkg-3-svc
│   └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── wf-subdir-a
│   ├── [nginx-deployment.yaml]  Deployment wonderful-feature-subdir-a
│   └── [nginx-service.yaml]  Service wonderful-feature-subdir-a-svc
└── wf-subdir-b
    ├── [nginx-deployment.yaml]  Deployment wonderful-feature-subdir-b
    └── [nginx-service.yaml]  Service wonderful-feature-subdir-b-svc
```
</details>

<details>
<summary>Boring Middleware Package</summary>

```
kpt pkg tree boring-middleware
Package "boring-middleware"
├── [Kptfile]  Kptfile boring-middleware
├── [nginx-deployment.yaml]  Deployment boring-middleware-root
├── [nginx-service.yaml]  Service boring-middleware-root-svc
├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── [resourcegroup.yaml]  ResourceGroup default/inventory-51802181
├── Package "bm-dep-subpkg-1"
│   ├── [Kptfile]  Kptfile boring-middleware-dep-subpkg-1
│   ├── [nginx-deployment.yaml]  Deployment boring-middleware-subpkg-1
│   ├── [nginx-service.yaml]  Service boring-middleware-subpkg-1-svc
│   ├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   └── Package "bm-dep-subsubpkg-1-1"
│       ├── [Kptfile]  Kptfile boring-middleware-dep-subsubpkg-1-1
│       ├── [nginx-deployment.yaml]  Deployment boring-middleware-subsubpkg-1-1
│       ├── [nginx-service.yaml]  Service boring-middleware-subsubpkg-1-1-svc
│       └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── Package "bm-dep-subpkg-2"
│   ├── [Kptfile]  Kptfile boring-middleware-dep-subpkg-2
│   ├── [nginx-deployment.yaml]  Deployment boring-middleware-subpkg-2
│   ├── [nginx-service.yaml]  Service boring-middleware-subpkg-2-svc
│   ├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   ├── Package "bm-dep-subsubpkg-2-1"
│   │   ├── [Kptfile]  Kptfile boring-middleware-dep-subsubpkg-2-1
│   │   ├── [nginx-deployment.yaml]  Deployment boring-middleware-subsubpkg-2-1
│   │   ├── [nginx-service.yaml]  Service boring-middleware-subsubpkg-2-1-svc
│   │   └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   ├── Package "bm-dep-subsubpkg-2-2"
│   │   ├── [Kptfile]  Kptfile boring-middleware-dep-subsubpkg-2-2
│   │   ├── [nginx-deployment.yaml]  Deployment boring-middleware-subsubpkg-2-2
│   │   ├── [nginx-service.yaml]  Service boring-middleware-subsubpkg-2-2-svc
│   │   ├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   │   └── Package "bm-dep-subsubsubpkg-2-2-1"
│   │       ├── [Kptfile]  Kptfile boring-middleware-dep-subsubsubpkg-2-2-1
│   │       ├── [nginx-deployment.yaml]  Deployment boring-middleware-subsubsubpkg-2-2-1
│   │       ├── [nginx-service.yaml]  Service boring-middleware-subsubsubpkg-2-2-1-svc
│   │       └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   └── Package "bm-dep-subsubpkg-2-3"
│       ├── [Kptfile]  Kptfile boring-middleware-dep-subsubpkg-2-3
│       ├── [nginx-deployment.yaml]  Deployment boring-middleware-subsubpkg-2-3
│       ├── [nginx-service.yaml]  Service boring-middleware-subsubpkg-2-3-svc
│       └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── Package "bm-dep-subpkg-3"
│   ├── [Kptfile]  Kptfile boring-middleware-dep-subpkg-3
│   ├── [nginx-deployment.yaml]  Deployment boring-middleware-subpkg-3
│   ├── [nginx-service.yaml]  Service boring-middleware-subpkg-3-svc
│   └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── bm-subdir-a
│   ├── [nginx-deployment.yaml]  Deployment boring-middleware-subdir-a
│   └── [nginx-service.yaml]  Service boring-middleware-subdir-a-svc
└── bm-subdir-b
    ├── [nginx-deployment.yaml]  Deployment boring-middleware-subdir-b
    └── [nginx-service.yaml]  Service boring-middleware-subdir-b-svc
```
</details>

For convenience, the contents of the packages are the same, see the package trees above. Each package contains 11 nginx deployments nested in subdirectories as follows;

- A root nginx deployment and service
- Two nginx deployments and services in subdirectories (not Kpt packages)
- Three nginx deployments and services in dependent subpackages
- Four nginx deployments and services in dependent sub-subpackages
- One nginx deployment and service in a dependent sub-sub-subpackages

```
kpt live apply wonderful-feature
kpt live apply boring-middleware

kubectl get pods -A                    
NAMESPACE  NAME                                                   READY   STATUS    RESTARTS   AGE
default    boring-middleware-root-d4df45749-c5xd9                 1/1     Running   0          53s
default    boring-middleware-subdir-a-d4df45749-s9wqr             1/1     Running   0          53s
default    boring-middleware-subdir-b-d4df45749-k2mns             1/1     Running   0          53s
default    boring-middleware-subpkg-1-d4df45749-zgvqq             1/1     Running   0          53s
default    boring-middleware-subpkg-2-d4df45749-rkfp6             1/1     Running   0          53s
default    boring-middleware-subpkg-3-d4df45749-7qtgr             1/1     Running   0          53s
default    boring-middleware-subsubpkg-1-1-d4df45749-4p6kj        1/1     Running   0          52s
default    boring-middleware-subsubpkg-2-1-d4df45749-hv9c8        1/1     Running   0          52s
default    boring-middleware-subsubpkg-2-2-d4df45749-jdzbt        1/1     Running   0          52s
default    boring-middleware-subsubpkg-2-3-d4df45749-c6lh5        1/1     Running   0          52s
default    boring-middleware-subsubsubpkg-2-2-1-d4df45749-q55x7   1/1     Running   0          51s
default    wonderful-feature-root-d4df45749-d8cbt                 1/1     Running   0          3m11s
default    wonderful-feature-subdir-a-d4df45749-knkww             1/1     Running   0          3m11s
default    wonderful-feature-subdir-b-d4df45749-rxlj2             1/1     Running   0          3m11s
default    wonderful-feature-subpkg-1-d4df45749-zhx47             1/1     Running   0          3m11s
default    wonderful-feature-subpkg-2-d4df45749-tsbl8             1/1     Running   0          3m11s
default    wonderful-feature-subpkg-3-d4df45749-5nzlx             1/1     Running   0          3m11s
default    wonderful-feature-subsubpkg-1-1-d4df45749-d2ndv        1/1     Running   0          3m11s
default    wonderful-feature-subsubpkg-2-1-d4df45749-7pclc        1/1     Running   0          3m11s
default    wonderful-feature-subsubpkg-2-2-d4df45749-gvs28        1/1     Running   0          3m11s
default    wonderful-feature-subsubpkg-2-3-d4df45749-rtwvx        1/1     Running   0          3m11s
default    wonderful-feature-subsubsubpkg-2-2-1-d4df45749-4qsfm   1/1     Running   0          3m10s

kubectl get svc -A  
NAMESPACE  NAME                                       TYPE           CLUSTER-IP       EXTERNAL-IP      PORT(S)                 AGE
default    boring-middleware-root-svc                 LoadBalancer   10.197.54.110    172.18.255.214   80:30391/TCP                  3m7s
default    boring-middleware-subdir-a-svc             LoadBalancer   10.197.18.155    172.18.255.215   80:32084/TCP                  3m7s
default    boring-middleware-subdir-b-svc             LoadBalancer   10.197.79.152    172.18.255.216   80:31737/TCP                  3m7s
default    boring-middleware-subpkg-1-svc             LoadBalancer   10.197.244.166   172.18.255.217   80:30218/TCP                  3m7s
default    boring-middleware-subpkg-2-svc             LoadBalancer   10.197.69.147    172.18.255.218   80:32490/TCP                  3m7s
default    boring-middleware-subpkg-3-svc             LoadBalancer   10.197.110.64    172.18.255.219   80:30588/TCP                  3m7s
default    boring-middleware-subsubpkg-1-1-svc        LoadBalancer   10.197.165.63    172.18.255.220   80:31128/TCP                  3m7s
default    boring-middleware-subsubpkg-2-1-svc        LoadBalancer   10.197.116.30    172.18.255.221   80:31679/TCP                  3m7s
default    boring-middleware-subsubpkg-2-2-svc        LoadBalancer   10.197.71.163    172.18.255.222   80:31055/TCP                  3m7s
default    boring-middleware-subsubpkg-2-3-svc        LoadBalancer   10.197.233.125   172.18.255.223   80:31126/TCP                  3m7s
default    boring-middleware-subsubsubpkg-2-2-1-svc   LoadBalancer   10.197.41.246    172.18.255.224   80:31549/TCP                  3m7s
default    wonderful-feature-root-svc                 LoadBalancer   10.197.11.180    172.18.255.203   80:31750/TCP                  5m26s
default    wonderful-feature-subdir-a-svc             LoadBalancer   10.197.57.84     172.18.255.204   80:30958/TCP                  5m26s
default    wonderful-feature-subdir-b-svc             LoadBalancer   10.197.6.44      172.18.255.205   80:30155/TCP                  5m26s
default    wonderful-feature-subpkg-1-svc             LoadBalancer   10.197.204.185   172.18.255.206   80:32019/TCP                  5m26s
default    wonderful-feature-subpkg-2-svc             LoadBalancer   10.197.229.66    172.18.255.207   80:30477/TCP                  5m26s
default    wonderful-feature-subpkg-3-svc             LoadBalancer   10.197.194.158   172.18.255.208   80:32154/TCP                  5m25s
default    wonderful-feature-subsubpkg-1-1-svc        LoadBalancer   10.197.211.9     172.18.255.209   80:30456/TCP                  5m25s
default    wonderful-feature-subsubpkg-2-1-svc        LoadBalancer   10.197.121.42    172.18.255.210   80:32484/TCP                  5m25s
default    wonderful-feature-subsubpkg-2-2-svc        LoadBalancer   10.197.171.54    172.18.255.211   80:31613/TCP                  5m25s
default    wonderful-feature-subsubpkg-2-3-svc        LoadBalancer   10.197.227.106   172.18.255.212   80:31505/TCP                  5m25s
default    wonderful-feature-subsubsubpkg-2-2-1-svc   LoadBalancer   10.197.111.244   172.18.255.213   80:30549/TCP                  5m25s
```

### Base Package

For now, we have one base package, the "Connacht Base"  package. This package is in the [base packages](https://github.com/liamfallon/base-packages) repo.

<details>
<summary>Connacht Base Package</summary>

```
kpt pkg tree connacht-base 
Package "connacht-base"
├── [Kptfile]  Kptfile connacht-base
├── [nginx-deployment.yaml]  Deployment connacht-base-root
├── [nginx-service.yaml]  Service connacht-base-root-svc
├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── [resourcegroup.yaml]  ResourceGroup default/inventory-39177409
├── Package "cb-dep-subpkg-1"
│   ├── [Kptfile]  Kptfile connacht-base-dep-subpkg-1
│   ├── [nginx-deployment.yaml]  Deployment connacht-base-subpkg-1
│   ├── [nginx-service.yaml]  Service connacht-base-subpkg-1-svc
│   ├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   └── Package "cb-dep-subsubpkg-1-1"
│       ├── [Kptfile]  Kptfile connacht-base-dep-subsubpkg-1-1
│       ├── [nginx-deployment.yaml]  Deployment connacht-base-subsubpkg-1-1
│       ├── [nginx-service.yaml]  Service connacht-base-subsubpkg-1-1-svc
│       └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── Package "cb-dep-subpkg-2"
│   ├── [Kptfile]  Kptfile connacht-base-dep-subpkg-2
│   ├── [nginx-deployment.yaml]  Deployment connacht-base-subpkg-2
│   ├── [nginx-service.yaml]  Service connacht-base-subpkg-2-svc
│   ├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   ├── Package "cb-dep-subsubpkg-2-1"
│   │   ├── [Kptfile]  Kptfile connacht-base-dep-subsubpkg-2-1
│   │   ├── [nginx-deployment.yaml]  Deployment connacht-base-subsubpkg-2-1
│   │   ├── [nginx-service.yaml]  Service connacht-base-subsubpkg-2-1-svc
│   │   └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   ├── Package "cb-dep-subsubpkg-2-2"
│   │   ├── [Kptfile]  Kptfile connacht-base-dep-subsubpkg-2-2
│   │   ├── [nginx-deployment.yaml]  Deployment connacht-base-subsubpkg-2-2
│   │   ├── [nginx-service.yaml]  Service connacht-base-subsubpkg-2-2-svc
│   │   ├── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   │   └── Package "cb-dep-subsubsubpkg-2-2-1"
│   │       ├── [Kptfile]  Kptfile connacht-base-dep-subsubsubpkg-2-2-1
│   │       ├── [nginx-deployment.yaml]  Deployment connacht-base-subsubsubpkg-2-2-1
│   │       ├── [nginx-service.yaml]  Service connacht-base-subsubsubpkg-2-2-1-svc
│   │       └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
│   └── Package "cb-dep-subsubpkg-2-3"
│       ├── [Kptfile]  Kptfile connacht-base-dep-subsubpkg-2-3
│       ├── [nginx-deployment.yaml]  Deployment connacht-base-subsubpkg-2-3
│       ├── [nginx-service.yaml]  Service connacht-base-subsubpkg-2-3-svc
│       └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── Package "cb-dep-subpkg-3"
│   ├── [Kptfile]  Kptfile connacht-base-dep-subpkg-3
│   ├── [nginx-deployment.yaml]  Deployment connacht-base-subpkg-3
│   ├── [nginx-service.yaml]  Service connacht-base-subpkg-3-svc
│   └── [package-context.yaml]  ConfigMap kptfile.kpt.dev
├── cb-subdir-a
│   ├── [nginx-deployment.yaml]  Deployment connacht-base-subdir-a
│   └── [nginx-service.yaml]  Service connacht-base-subdir-a-svc
└── cb-subdir-b
    ├── [nginx-deployment.yaml]  Deployment connacht-base-subdir-b
    └── [nginx-service.yaml]  Service connacht-base-subdir-b-svc
```
</details>

The contents of the base package is sdimilar to the "Wonderful Feature" and "Boring Middleware" upstream packages, see the package tree above. It has an extra directory tree `cb-subdir-c\cb-subsubdir-c-a` and `cb-subdir-c\cb-subsubdir-c-b`. The package contains the same 11 nginx deployments as in the upstream pacakges and three extra nginx deployments for each node of the extra directory tree.

### Adding Independent Subpackages to the Base Package

We now add the two upstream packages as subpackages to the base package. We:

 - add the "Wonderful Feature" upstream package as a subpackage of the "Connacht Base" package at root level
 - add the "Wonderful Feature" upstream package as a subpackage of the "cb-subdir-a" subdirectory of the "Connacht Base" package
 - add the "Wonderful Feature" upstream package as a subpackage of the "cb-subdir-c\cb-subsubdir-c-a" sub-subdirectory of the "Connacht Base" package
 - add the "Wonderful Feature" upstream package as a subpackage of the "cb-dep-subsubpkg-2-3" subpackage of the "Connacht Base" package
 - add the "Boring Middleware" as a subpackage of the "Connacht Base" package at root level
 - add the "Boring Middleware" as a subpackage of the "Wonderful Feature" subpackage of the "Connacht Base" package at root level
 - add the "Boring Middleware" as a subpackage of the "Wonderful Feature" subpackage of the "cb-subdir-a" subdirectory of the "Connacht Base" package
 - add the "Boring Middleware" as a subpackage of the "Wonderful Feature" subpackage of the "cb-subdir-c\cb-subsubdir-c-a" sub-subdirectory of the "Connacht Base" package
 - add the "Boring Middleware" as a subpackage of the "Wonderful Feature" upstream package as a subpackage of the "cb-dep-subsubpkg-2-3" subpackage of the "Connacht Base" package
 - add the "Boring Middleware" as a subpackage of the "cb-subdir-b" subdirectory of the "Connacht Base" package
 - add the "Boring Middleware" as a subpackage of the "cb-subdir-c\cb-subsubdir-c-b" sub-subdirectory of the "Connacht Base" package
 - add the "Boring Middleware" as a subpackage of the "cb-dep-subsubsubpkg-2-2-1" subpackage of the "Connacht Base" package
