# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.0/0x0-server-darwin-x64.zip"
      sha256 "457eb0ae0126b65ad835d6c26d47698ab971242632294afaaa04fefa45900126"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.0/0x0-server-darwin-arm64.zip"
      sha256 "b317302dc7854b0ca598a15f1e17728324e5d0b0096a8475e7ad8ab48fd2668e"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.0/0x0-server-linux-x64.tar.gz"
      sha256 "4370c47c0650e59fb810af77fc7576ba83aa7ad8b41d90474c0dfdd0368f5e6f"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.0/0x0-server-linux-arm64.tar.gz"
      sha256 "bd50a85d6344421462084ca0fe78f3342e860f63a7faa319ce52a86a0b67c49f"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
