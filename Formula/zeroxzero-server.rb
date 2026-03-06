# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.0/0x0-server-darwin-x64.zip"
      sha256 "13e12c44f0c46b4fa31e6b1721f9947b7b63e7e99abde2d0c3677e0b9cbda3c3"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.0/0x0-server-darwin-arm64.zip"
      sha256 "22a252292970e9b4aedbcdb85db76f952589869ea68a01b4e9e9ad36d62bcba2"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.0/0x0-server-linux-x64.tar.gz"
      sha256 "10b6cd35496083e21dce83f13ffd245e4fc9c5de234001e51dce67b17073b82d"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.0/0x0-server-linux-arm64.tar.gz"
      sha256 "2cb599ea4d1f6f993d0fd4a80a1a315a42858a8aa79fb5b5bfefd07cacce7f4a"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
