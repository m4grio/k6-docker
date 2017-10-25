# A dock to k6
[k6](https://k6.io/) run my way – read *unofficial* – in Docker

## Installation

1. Use `make`:
```shell
$ make install
...
Successfully built a6b866b88ebe
Successfully tagged k6docker_k6:latest
```

## Usage

Just use `k6` as you would normally do.

### Configuration

Use a `.env` file to set all the [environmental variables](https://docs.k6.io/docs/environment-variables) you may need.

```shell
$ ls -a
.      ..     .env   script.js
$
$ k6 run script.js --vus 10

          /\      |‾‾|  /‾‾/  /‾/
     /\  /  \     |  |_/  /  / /
    /  \/    \    |      |  /  ‾‾\
   /          \   |  |‾\  \ | (_) |
  / __________ \  |__|  \__\ \___/ .io

  execution: local
     output: -
     script: script.js

    duration: -,   iterations: 1
         vus: 10, max: 10

    done [==========================================================] 1 / 1

    data_received.........: 828 B 436 B/s
    data_sent.............: 100 B 52 B/s
    http_req_blocked......: avg=419.28ms min=419.28ms med=419.28ms max=419.28ms p(90)=419.28ms p(95)=419.28ms
    http_req_connecting...: avg=412.92ms min=412.92ms med=412.92ms max=412.92ms p(90)=412.92ms p(95)=412.92ms
    http_req_duration.....: avg=475.33ms min=475.33ms med=475.33ms max=475.33ms p(90)=475.33ms p(95)=475.33ms
    http_req_receiving....: avg=233.42µs min=233.42µs med=233.42µs max=233.42µs p(90)=233.42µs p(95)=233.42µs
    http_req_sending......: avg=273.94µs min=273.94µs med=273.94µs max=273.94µs p(90)=273.94µs p(95)=273.94µs
    http_req_waiting......: avg=474.83ms min=474.83ms med=474.83ms max=474.83ms p(90)=474.83ms p(95)=474.83ms
    http_reqs.............: 1     0.527567/s
    iterations............: 1     0.527567/s
    vus...................: 10    min=10 max=10
    vus_max...............: 10    min=10 max=10

```

## Author
- Written by Mario Álvarez <ahoy@m4grio.me>
