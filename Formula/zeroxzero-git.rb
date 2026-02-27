# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.0.0/0x0-git-darwin-x64.zip"
      sha256 "ca983b252bed36c6a0c1af7c52119314cd0bf90a1cf2e49625850e8671f6eb6e"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.0.0/0x0-git-darwin-arm64.zip"
      sha256 "17f0c049f6a8473ae05473732e422dcf93c96c297d570d752db2d1081734e7ed"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.0.0/0x0-git-linux-x64.tar.gz"
      sha256 "024996cf0f0dbb99b6550e6b62ffda8f7d3b860a36f9d066b40e0cb9a19a715a"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.0.0/0x0-git-linux-arm64.tar.gz"
      sha256 "d0071d2cc1b8a9b41d8b2332515dde1a8cff1d2b0c034dff656771d307c1483a"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
