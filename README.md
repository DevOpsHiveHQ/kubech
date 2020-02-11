<!-- omit in toc -->
# kubech (kubectl change)
Set kubectl contexts/namespaces per shell/terminal to manage multi Kubernetes cluster at the same time.

<!-- omit in toc -->
## ToC
- [Why](#why)
- [Features](#features)
- [Install](#install)
- [Usage](#usage)
  - [List available contexts](#list-available-contexts)
  - [Switch context](#switch-context)
  - [List available namespaces](#list-available-namespaces)
  - [Switch to context](#switch-to-context)
- [Notes](#notes)

## Why
- If you manage multi K8s clusters, you will need a handy way to work more than one cluster at the same time.
- [kubectx/kubens](https://github.com/ahmetb/kubectx) tools fix this problem but globally, that means all shells and terminals will have the same context/namespace.
- However, this is not helpful at all if you are actually working with multi clusters at the same time.
- Thus, `kubech` comes to fix this problem so you can set K8s cluster context/namespace per shell/terminal.

## Features
- Easy to use! Just add it in your `.bashrc`.
- No aliases, no extra customizations, it doesn't matter if you work with 1 or 100 K8s clusters!
- You still can use `kubech` along with other tools like `kubectx/kubens`.
- Each shell/terminal will have its own context (K8s cluster) or namespace.
- Doesn't change anything in `~/.kube/config` file. So it works perfectly with static and dynamic kube config files.
- It supports autocomplete for contexts and namespaces.

## Install
Clone this repo, and source `kubech` in your `.bashrc` file.

```bash
git clone https://github.com/aabouzaid/kubech ~/.kubech

echo 'source ~/.kubech/kubech' >> ~/.bashrc
```

## Usage
For people who don't like long names, also the aliases `kcc/knn` available along with `kubechc/kubechn` :-)

### List available contexts
```
$ kubechc
k8s_cluster01
k8s_cluster02
```

### Switch context
No need to write the full name, press tab for auto complete.
```
$ kubechc k8s_cluster01
```

### List available namespaces
```
$ kubechn
default
kube-public
kube-system
monitoring
```

### Switch to context
No need to write the full name, press tab for auto complete.
```
$ kubechn monitoring
```

## Notes
- This tools has been tested with `bash 4.4` only.
- It's recommended to use this tool with [kube-ps1](https://github.com/jonmosco/kube-ps1) so current cluster is more visible.
- It's still recommended to have [kubectx/kubens](https://github.com/ahmetb/kubectx) to manage contexts/namespaces globally.
- Once `kubech` is used to change context/namespace, it's not possible to change context/namespace again in the same shell. Open a new shell/terminal to be able to list and change to all contexts/namespaces again.