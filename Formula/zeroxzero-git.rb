# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-darwin-x64.zip"
      sha256 "ccee27a8d92431cbe895cd0e582abf399ef2c5e33b4e2785d761e860d7d5940a"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-darwin-arm64.zip"
      sha256 "e2a5a7ed94ba73e3c31d3a5504c4ef57093a13df41778f7d190c6da4c0fad91d"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-linux-x64.tar.gz"
      sha256 "b16c9a6125a8022f77ab2d2c8ed8ed5b6f6b8b5be9c9d4b79a124583c5f5780c"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-linux-arm64.tar.gz"
      sha256 "a47e629e52affae136d9dea01bb1b7570da85486480693d9a3e6d28963d5ad79"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
