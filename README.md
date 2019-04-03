homebrew-cita
=============

## Installation
```
brew tap cryptape/cita
```

By default, binaries installed by cita will be placed into:

```
/usr/local/Cellar/cita/0.22.0
```

Run `cita help` for more detailed information.

### Install docker
```
brew cask install docker
```

Click docker icon and share `/usr/local/Cellar/cita`.


## Getting-Started

### Create Chain

```
$ cita create --chain_name "cita_block_chain" --super_admin "0x4b5ae4567ad5d9fb92bc9afd6a657e6fa13a2523" --nodes "127.0.0.1:4000,127.0.0.1:4001,127.0.0.1:4002,127.0.0.1:4003"
```

### Setup Chain

```
$ cita setup test-chain/0
```

### Start Chain
```
$ cita start test-chain/0
```

### Stop Chain
```
$ cita stop test-chain/0
```

### Usages
```
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

```
$ cita port 42:42
# The docker port is `1337:1337` by default, if you need to, use this._
```

## Contributing

CITA is still in active development. Building a blockchain platform is a huge task, we need your help. Any contribution is welcome.

Please check [cryptape/cita][1] for more details.

## License

[Apache](/LICENSE)

[1]: https://github.com/cryptape/cita
