# Docker RE

Dockerized platform for reversing

## How to use

> HINT:You can use exposed ports `4444` and `8888` for gdbserver or other networkish things

```bash
# Spawn image
docker run --rm -it --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -v "$(current_dir)":/app -w /app <DOCKER-IMAGE-NAME>
# TODO
# Interact with it
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