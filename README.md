Dependencies:

```sh
brew install lima
```

[Install socket_vmnet from release binary](https://github.com/lima-vm/socket_vmnet?tab=readme-ov-file#from-binary)

Do not use homebrew. Nothing I did could get that to work.

Then run

```sh
limactl sudoers >etc_sudoers.d_lima && sudo install -o root etc_sudoers.d_lima "/private/etc/sudoers.d/lima"
```

References:

- https://github.com/louhisuo/k8s-on-macos
