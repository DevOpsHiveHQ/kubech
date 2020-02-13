<!-- omit in toc -->
# kubech (kubectl change)
Set kubectl contexts/namespaces per shell/terminal to manage multi Kubernetes cluster at the same time.

i.e. same as `kubectx/kubens` but per shell/terminal.

<!-- omit in toc -->
## ToC
- [Why](#why)
- [Features](#features)
- [Install](#install)
  - [Bash](#bash)
- [Usage](#usage)
  - [List available contexts](#list-available-contexts)
  - [Switch context](#switch-context)
  - [List available namespaces](#list-available-namespaces)
  - [Switch namespace](#switch-namespace)
- [Notes](#notes)
- [To-do](#to-do)

## Why
- If you manage multi K8s clusters, you will need a handy way to work more than one cluster at the same time.
- [kubectx/kubens](https://github.com/ahmetb/kubectx) tools fix this problem but globally,
  that means all shells and terminals will have the same context/namespace.
- However, this is not helpful at all if you are actually working with multi clusters at the same time.
- Thus, `kubech` comes to fix this problem so you can set K8s cluster context/namespace per shell/terminal.

## Features
- Each shell/terminal will have its own context (K8s cluster) or namespace!
- Easy to use! Just source it in your favorite shell.
- No aliases, no extra customizations, it doesn't matter if you work with 1 or 100 K8s clusters!
- It still can be used along with other tools like `kubectx/kubens`.
- It doesn't change anything in `~/.kube/config` file. So it works perfectly with static and dynamic kube config files.
- It supports autocomplete for contexts and namespaces.

## Install
Clone this repo, then source `kubech` in your shell config file.
```bash
git clone https://github.com/aabouzaid/kubech ~/.kubech
```

### Bash
```
echo 'source ~/.kubech/kubech' >> ~/.bashrc
echo 'source ~/.kubech/completion/kubech.bash' >> ~/.bashrc
```

## Usage
```
NOTE:
  - The command "kubech" is just a meta for other commands. So kubech does nothing by itself.
  - Short names "kchc/kchn" are also available.

USAGE:
  kubechc             : List all contexts
  kubechc <CONTEXT>   : Switch to context <CONTEXT>
  kubechn             : List all namespaces
  kubechn <NAMESPACE> : Switch to namespace <NAMESPACE>

```

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

### Switch namespace
No need to write the full name, press tab for auto complete.
```
$ kubechn monitoring
```

## Notes
- This tools has been tested with `bash 4.4` only. However it should work with other shells like `zsh`.
- It's recommended to use this tool with [kube-ps1](https://github.com/jonmosco/kube-ps1) so current cluster is more visible.
- It's still recommended to have [kubectx/kubens](https://github.com/ahmetb/kubectx) to manage contexts/namespaces globally.
- Once `kubech` is used to change context/namespace, it's not possible to change context/namespace again in the same shell.
  Open a new shell/terminal to be able to list and change to all contexts/namespaces again.

## To-do
- Add autocomplete support for `zsh` (if you have an experience with zsh feel free to make a PR).
- Test it with older `bash` versions like bash v3 on MacOS.