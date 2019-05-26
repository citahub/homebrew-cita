homebrew-cita
=============

More details at [CITAHub Docs][1].

## Installation
```shell
brew tap cryptape/cita
```

By default, binaries installed by cita will be placed into:

```
/usr/local/Cellar/cita/0.24.0
```

Run `cita help` for more detailed information.

### Install docker
```shell
brew cask install docker
```

__Note__: Please click docker icon and share `/usr/local/Cellar/cita`.


### Install cita
```shell
brew install cita
```

It will install **cita_secp256k1_sha3** by default.

## Getting-Started

### Create Chain

```shell
$ bin/cita create --super_admin "0x141d051b1b1922bf686f5df8aad45cefbcb0b696" --nodes "127.0.0.1:4000,127.0.0.1:4001,127.0.0.1:4002,127.0.0.1:4003"
```

### Setup Chain

```shell
$ cita setup test-chain/0
$ cita setup test-chain/1
$ cita setup test-chain/2
$ cita setup test-chain/3
```

### Start Chain
```shell
$ cita start test-chain/0
$ cita start test-chain/1
$ cita start test-chain/2
$ cita start test-chain/3
```

### Test chain available

Request (get block numbers of the chain):
```shell
$ curl -X POST --data '{"jsonrpc":"2.0","method":"blockNumber","params":[],"id":74}' 127.0.0.1:1337
```

Result:
```json
{
  "jsonrpc": "2.0",
  "id": 74,
  "result": "0x55"
}
```

### Stop Chain
```shell
$ cita stop test-chain/0
```

### Usages
```shell
$ cita
Usage: cita <command> <node> [options]
where <command> is one of the following:
    { help | create | port | setup | start | stop | restart
      ping | top | backup | clean | logs | logrotate }
Run `cita help` for more detailed information.
```

## Presets

_Here are some default sets, you can reset them on your own:_

### Set Port

```shell
$ cita port 42:42
# The docker port is `1337:1337` by default, if you need to, use this.
```

## Contributing

CITA is still in active development. Building a blockchain platform is a huge task, we need your help. Any contribution is welcome.

Please check [cryptape/cita][1] for more details.

## License

[Apache](/LICENSE)

[1]: https://docs.citahub.com/en-US/welcome
