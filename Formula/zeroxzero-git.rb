# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-darwin-x64.zip"
      sha256 "b86ae0655b9de29864d09099627da6276625d4165137835cbedf447118a9489a"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-darwin-arm64.zip"
      sha256 "bacfa6e04bb5b045a3e2f46d3a886f5194d30ceb66cf248af2f485cc2ad7c9b8"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-linux-x64.tar.gz"
      sha256 "ba52529bb90d0d564078a11c7262062f6c5758a046b4475703cbff6ccf871cc9"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-linux-arm64.tar.gz"
      sha256 "cc185ee6fdf1ea2b7614f3e5fcb26e34ccaaf879ecd5cbaa394a3d8c62bb3b11"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
