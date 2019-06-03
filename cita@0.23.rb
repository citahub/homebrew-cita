# coding: utf-8
# CITA Formula
class CitaAT023 < Formula
  desc "A high performance blockchain for enterprise users."
  homepage "https://github.com/cryptape/cita"

  version "0.23.1"
  url "https://github.com/cryptape/cita/releases/download/v0.23.1/cita_secp256k1_sha3.tar.gz"
  sha256 "add391c4cb8cb2f2b96e3888ae42ec3c00628821b85c4a04d05145aa825f50e4"
  
  def install
    libexec.install Dir["*"]
    
    bin.install_symlink Dir["#{libexec}/bin/cita"]
    bin.install_symlink Dir["#{libexec}/bin/cita-env"]
    bin.install_symlink Dir["#{libexec}/bin/cita-config"]
  end

  def caveats; <<~EOS
     By default, binaries installed by cita will be placed into:

     #{libexec}

     Usage: cita_commander <command> <node> [options]
     where <command> is one of the following:
         { help | create | port | setup | start | stop | restart
           ping | top | backup | clean | logs | logrotate }
     Run `cita help` for more detailed information.

     happy hacking!!! 🧙
  EOS
  end
end
