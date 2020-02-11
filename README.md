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
- Thus, `kubech` comes to fix this problem so you can set context/namespace per shell/terminal.

## Features
- Simple and easy to use! No aliases, no changes, just add it in your `.bashrc`.
- Each shell/terminal will have its own context (K8s cluster) or namespace.
- It supports autocomplete for contexts and namespaces.
- Doesn't change anything in `~/.kube/config` file. So it works perfectly with static and dynamic kube config files.

## Install
Clone this repo, and source `kubech` in your `.bashrc` file.

```bash
git clone https://github.com/aabouzaid/kubech ~/.kubech

echo 'source ~/.kubech/kubech' >> ~/.bashrc
```

## Usage

### List available contexts
```
$ kcc
gke_project_cluster01
gke_project_cluster02
```

### Switch context
No need to write the full name, press tab for auto complete.
```
$ kcc gke_project_cluster01
```

### List available namespaces
```
$ knn
default
kube-public
kube-system
monitoring
```

### Switch to context
No need to write the full name, press tab for auto complete.
```
$ knn monitoring
```

## Notes
- This tools has been tested with `bash 4.4` only.
- It's recommended to use this tool with [kube-ps1](https://github.com/jonmosco/kube-ps1) so current cluster is more visible.
- It's still recommended to have [kubectx/kubens](https://github.com/ahmetb/kubectx) to manage contexts/namespaces globally.
- Once `kcc` is used to change context, it's not possible to change context again in the same shell. Open a new shell/terminal to be able to list and change to all contexts again.