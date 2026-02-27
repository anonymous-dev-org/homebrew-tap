# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.1.0/0x0-git-darwin-x64.zip"
      sha256 "24fe3e3fcd59e93f0f663229407550d994caf1d99768ff503d2994a7d63cfc6a"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.1.0/0x0-git-darwin-arm64.zip"
      sha256 "a89a80d5d7ef9011b618d7ef722d80dc7c58970d603e6656e6a536d05559b0d7"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.1.0/0x0-git-linux-x64.tar.gz"
      sha256 "4f5514c00823f43e16e580ae1dd322e2c7ebbadc98ba50dd2f2046cc6276b1c6"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.1.0/0x0-git-linux-arm64.tar.gz"
      sha256 "7d3a274704d4fe21084c7834e515bd85a3ca9615007dd2e0ef256515bdd41d80"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
