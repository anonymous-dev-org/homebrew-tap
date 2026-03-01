# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.1/0x0-server-darwin-x64.zip"
      sha256 "d5823fc1ea144d472881e654d7f5ea08676c301a705c62bd2a71be59b377e283"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.1/0x0-server-darwin-arm64.zip"
      sha256 "5a2166725777df03f4ce1bed3f03c62b38b239adbab50432dad1a1dc69b4f376"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.1/0x0-server-linux-x64.tar.gz"
      sha256 "473db4dd1aac451d07b0974059fbc76714efc47300ea19f146c4347848f50efd"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.1/0x0-server-linux-arm64.tar.gz"
      sha256 "e4856ffce0d67f978f20117f5be0d04506d4a0f75638ee20f2e8e4ec991de6d3"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
