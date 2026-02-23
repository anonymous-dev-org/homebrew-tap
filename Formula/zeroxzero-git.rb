# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-darwin-x64.zip"
      sha256 "7ae40c195e534062e75ece0d1954455ce379806398fe510d7b1cca7415c4206a"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-darwin-arm64.zip"
      sha256 "11aa5cfd361b91f3c690623e4152251e2c0028b966a7e97d6c63f1ab8b350225"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-linux-x64.tar.gz"
      sha256 "89dc8fffc118e9de7b87539c6051891646402bc2705950e8a416598a3a734599"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-linux-arm64.tar.gz"
      sha256 "c498ffae987b17f1b06e4dbac6543c0ad72cb53dac953683e01aedba47d20671"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
