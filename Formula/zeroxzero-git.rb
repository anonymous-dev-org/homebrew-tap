# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.5.0/0x0-git-darwin-x64.zip"
      sha256 "a9ae68a69462982686da45ac090579e908c41dcbae8c70a93b8af8947fe0205d"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.5.0/0x0-git-darwin-arm64.zip"
      sha256 "b9e7fa6b549a44df4b7c314a6bd68ff739614ce5232ebf225a0299ed2bad7b8b"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.5.0/0x0-git-linux-x64.tar.gz"
      sha256 "5a98b50aad3667db55d11e995549a926b0d865f7143cce5df44043fedf993488"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.5.0/0x0-git-linux-arm64.tar.gz"
      sha256 "b4e0f29efac4ef5b61ae3e6c941da0477598db6a5d5c21ff61650fee22a28df5"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
