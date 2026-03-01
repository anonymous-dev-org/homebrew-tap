# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.4.1/0x0-git-darwin-x64.zip"
      sha256 "cf1dbedd6c0d0124db2f5f1de7315579117ed6e4a122775aa54baae46bfebc0e"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.4.1/0x0-git-darwin-arm64.zip"
      sha256 "56d7aac61a670140bbfab9ef13c5364edbaf75e718a06b7d38fe7b6cecafa9ad"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.4.1/0x0-git-linux-x64.tar.gz"
      sha256 "8a3b5e0ef3d5238684499de249d3cd91a80739eb2c6db5a5386d4f1a0416f479"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.4.1/0x0-git-linux-arm64.tar.gz"
      sha256 "a6973b8e1c90d184bbcceb56a496fb95c9ea508d24e8c676495acbf5317dc866"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
