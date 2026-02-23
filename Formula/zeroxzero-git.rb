# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-darwin-x64.zip"
      sha256 "77a43ab680230bacd0cd3a8fc528093d942af179abe00939294dbfb0a490086e"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-darwin-arm64.zip"
      sha256 "8aff4b6f70131ea1c84dec8d29c47b7452e51a512832e17831c4639e39d9fa36"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-linux-x64.tar.gz"
      sha256 "fbabe67675c33b1eb901fc47d8629850052dec56ab48a77887b01601ea6bc50d"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-linux-arm64.tar.gz"
      sha256 "6086865eca013c8432f721c0a66e07444607f77276b2b8cf3a896f6a5a481129"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
