# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.5.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.2/0x0-server-darwin-x64.zip"
      sha256 "dedc2479d6db0d69c8a51fe0e81222948e7ba4cc3cddad6373edced872620403"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.2/0x0-server-darwin-arm64.zip"
      sha256 "7776efed0ab60d607d99c1a459918c127c9350965f416d31fce9b84531e04ef9"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.2/0x0-server-linux-x64.tar.gz"
      sha256 "0a63af3835b9ed4693f4212c065975f010907e744bfd1e0b3ce35ba76fd5f4d0"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.2/0x0-server-linux-arm64.tar.gz"
      sha256 "666f5431713f46d53a146e0eb5ee46852ee8d6be9ae619ae3a76984ad734c043"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
