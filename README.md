redis-debug
===

## Prepare

```
$ make build
```

## Usage

```
$ make run
$ ./redis-server --port 9876 --protected-mode no & gdb -p $(ps ux | grep redis-server | grep -v grep | awk '{print $2}')
```
