# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.0.0/0x0-git-darwin-x64.zip"
      sha256 "46756ed2974931d22310922e0ffe68468293d00143167c8817ffaad2ca852ced"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.0.0/0x0-git-darwin-arm64.zip"
      sha256 "a96b84ceac3e8bf96ce2d60dba0463110fb09d1b679a68de7f53d46d3526a59b"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.0.0/0x0-git-linux-x64.tar.gz"
      sha256 "7eedb86baa8cd68a04b29499123c213d5f806bd3a878f1ae0fad61789fa967ea"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.0.0/0x0-git-linux-arm64.tar.gz"
      sha256 "af9853505cd8ddf1695749ec56ab3ed0b6070a9bdc91bd3a2a89106ffd625ce1"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
