# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.4.0/0x0-git-darwin-x64.zip"
      sha256 "5b67b6d4447b7cd63679eecc53e73cdef4ff0806185f85ff8665fb3f17ce648d"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.4.0/0x0-git-darwin-arm64.zip"
      sha256 "c8aa5eab21216720d7fa0e08f478b38e3b75e14a2058f29cfa0688c29a8ce737"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.4.0/0x0-git-linux-x64.tar.gz"
      sha256 "f27af789e8a7aaf42b8831a973671812c31a33b32f3393a3c9913815729c60b0"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.4.0/0x0-git-linux-arm64.tar.gz"
      sha256 "db2116beaec99014c91c8c56a9b12536909e7edb9ed004f52a436f35c64a1707"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
