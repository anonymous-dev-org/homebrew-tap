# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.1.0/0x0-git-darwin-x64.zip"
      sha256 "222e2adeeada41b0c5fb0ccd941df604e8653d5d858d1911221c01966f1eeeb8"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.1.0/0x0-git-darwin-arm64.zip"
      sha256 "3bc3e920a70364f889fe3867fa206158456b12e7bd9e9bac8728905faecea771"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.1.0/0x0-git-linux-x64.tar.gz"
      sha256 "617dd4f2b2a1c337a81e4f40b381a3cf03b404d12e37467db9e4106e0d752c27"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.1.0/0x0-git-linux-arm64.tar.gz"
      sha256 "ae736e70657040373a4d7ac1b5683349b039be1d8c7faf99d45d081f925c875d"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
