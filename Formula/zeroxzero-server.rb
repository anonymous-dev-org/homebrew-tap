# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.2/0x0-server-darwin-x64.zip"
      sha256 "f3f985c59ca45cb7f8e1e1fc7309f64ede1277005328b047332533c258fa7b55"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.2/0x0-server-darwin-arm64.zip"
      sha256 "f85ea40a2eafeef7dd601847b906153e43d9d0cf4ce79723f4c0e5006e1e75e9"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.2/0x0-server-linux-x64.tar.gz"
      sha256 "7f497f86d89570ca1fe7febc793da2e24618c6b135fe02ad254f31ef0086ad96"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.2/0x0-server-linux-arm64.tar.gz"
      sha256 "0539847d8c7cd772098df38136404d50a41e61df58ac1ccbd5f56eb23b60f43d"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
