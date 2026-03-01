# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.2/0x0-server-darwin-x64.zip"
      sha256 "4ff5ef609bceeb70a8ae602ac16ae998c3c458f8b5677ebcaa9b305b94a0db90"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.2/0x0-server-darwin-arm64.zip"
      sha256 "c8b9ad1e8bc504cb673681716dfb676a3292a2e4536f928de8ce71c79d25100e"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.2/0x0-server-linux-x64.tar.gz"
      sha256 "030af900b21e8f10cba8eb7504734997b353504809c013aaf51fe7062d85a619"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.2/0x0-server-linux-arm64.tar.gz"
      sha256 "0c9a5cee259b474fa0540bd85e99ef693250a1cb2ef58ea2dafc49fea40ec5ad"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
