# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.4.0/0x0-git-darwin-x64.zip"
      sha256 "396413c44ce31ffb21d30219898872b5a92ab236535aea2c722f6b9a85332c57"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.4.0/0x0-git-darwin-arm64.zip"
      sha256 "1854bba025bda773bed93e8ab1dd6b6018663f1d4b0c9f7c9beeeb06b9f43773"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.4.0/0x0-git-linux-x64.tar.gz"
      sha256 "3ebf44c8df34bfedc2925661bb93bfb8289bf6275681e11af57f1752e661370b"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.4.0/0x0-git-linux-arm64.tar.gz"
      sha256 "e7739774b1f35af3138741b94ad5a0d25f7295a7206da536dd7aba02d886cafa"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
