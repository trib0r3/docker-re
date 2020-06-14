# Docker RE

Dockerized platform for reversing

## How to use

> HINT: You can use exposed ports `4444` and `8888` for gdbserver or other networkish things,

```bash
docker pull trib0re/docker-re
````

Basic usage:

```bash
# Spawn image & interact
docker run -it --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -v "$(pwd)":/dropzone trib0re/docker-re
```

## Installed tools

### Reversing

- gdb, gdbserver
- gef
- frida-tools

### Other

- vim
- tmux
- zsh

## ToDo

- [ ] Add docker-compose for spawning image with caps set
- [ ] Add more tools commonly used for reversing

## License

[BSD 3 License](./LICENSE)