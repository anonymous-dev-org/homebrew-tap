# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-darwin-x64.zip"
      sha256 "cbaaea1a1f59350511bc166d93fc26dd9e230f177a8e801a77ebb17ea89270ad"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-darwin-arm64.zip"
      sha256 "e3045d758930c52505ded5ec97993f036144b5d02084fc18d38f81f0f83df9da"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-linux-x64.tar.gz"
      sha256 "2d568797ed055b8043258817acbea97a33d79ecc4e21381ccb04bca906e14c9c"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-linux-arm64.tar.gz"
      sha256 "a7b16b20604b4cdfb1f0e3e60329b2c082b97b89fa7f5886ab71e610f72cd986"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
