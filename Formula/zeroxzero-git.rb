# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-darwin-x64.zip"
      sha256 "1fde2ca7d94ce82e21d40c99e957cf60c6c6ca2be5f990fce317261a169ba666"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-darwin-arm64.zip"
      sha256 "de2c67fb1ceecebc9e8bae9e7dc68e0fbb8b10ee7c69cbc4f70f6ae549b3f5f7"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-linux-x64.tar.gz"
      sha256 "b59c417bb0469398e5f6495605bfc717a549d5bbe5e3a2667006c94defb812c9"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-linux-arm64.tar.gz"
      sha256 "8cf180e30ffa9264fbcf8a5cede8a5e7404d5c4efa9f734cdad779a3a2b06c05"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
