# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.1/0x0-server-darwin-x64.zip"
      sha256 "55a1fa32c06c5aa71a8db663a4a3f5ae9883e301766a8be05205ce1085406344"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.1/0x0-server-darwin-arm64.zip"
      sha256 "b1a886627997af39391b917e5a1b3c553fabf8001d6516df6142b8ed807737b3"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.1/0x0-server-linux-x64.tar.gz"
      sha256 "467cd58401db11a232371084f732f42d9e846d5c652cecca05571d993680fd7e"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.1/0x0-server-linux-arm64.tar.gz"
      sha256 "6289ad0a0a75d47b4bdcaf1c71f7a6599a5d40a74e88e423f9c40c87d691f3fa"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
