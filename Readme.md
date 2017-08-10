
## Usage

```
$ git clone https://github.com/uso8000k/gobgp_docker.git
$ docker-compose up -d
$ docker exec gobgpdocker_rt1_1 gobgp neighbor
$ docker exec gobgpdocker_rt1_1 gobgp global  rib -a evpn
```

## Thanks

* http://qiita.com/ttsubo/items/99bb4826538bf1353de5
  - gobgp + goplane
