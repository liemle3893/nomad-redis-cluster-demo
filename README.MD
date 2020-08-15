# What this repo do?

This repo demo how to deploy Redis cluster using Nomad and Consul. This also use Envoy proxy to support migrate/backward-compatible with running application.


## Prerequisite
Below softwares must be installed

- Docker
    - Check:
    ```shell
    $ docker ps -q | head -n 1
    ```
- Redis (Version >= 3.0)
    - Check: 
    ```
    $ redis-cli --version
    ```
- Hashicorp Nomad
    - Check:
     ```
     $ nomad --version
     ```
- Hashicorp Consul
    - Check: 
    ```
    $ consul --version
    ```
- Consul Template
    - Check: 
    ```
    $ consul-template --version
    ```

## Start Nomad

### OSX
```bash
$ nohup ./start-nomad.sh en0  &
```

### Linux
```bash
$ nohup ./start-nomad.sh eth1 &
```

## Start Consul
```bash
$ nohup ./start-consul.sh en0 &
```

## Run all job
```shell
$ make
```

## Access into cluster over Envoy proxy
```shell
$ ./connect-envoy-proxy.sh
```

# Cleanup
```shell
$ ./teardown.sh
```

