homebrew-cita
=============

More details at [CITAHub Docs][1].

## Installation
```shell
brew tap cryptape/cita
```

By default, binaries installed by cita will be placed into:

```
/usr/local/Cellar/cita/0.22.0
```

Run `cita help` for more detailed information.

### Install docker
```shell
brew cask install docker
```

Click docker icon and share `/usr/local/Cellar/cita`.


### Install cita
```shell
brew install cita
```

It will install **cita_secp256k1_sha3** by default.

## Getting-Started

### Create Chain

```shell
$ cita create --chain_name "test-chain" --super_admin "0x4b5ae4567ad5d9fb92bc9afd6a657e6fa13a2523" --nodes "127.0.0.1:4000"
```

### Setup Chain

```shell
$ cita setup test-chain/0
```

### Start Chain
```shell
$ cita start test-chain/0
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
