# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.3.0/0x0-git-darwin-x64.zip"
      sha256 "cd59db49a7e8710f2e475236d90128a261e07366b6decee7ec873293ecfe4893"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.3.0/0x0-git-darwin-arm64.zip"
      sha256 "c66bb5f91b221d4ce173343ec6f7291d56a90f1a633a80990a3044af6949255b"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.3.0/0x0-git-linux-x64.tar.gz"
      sha256 "7a5d5a51b5a1b2deec448739d006c838313f0b3cc68074438107b6abf679d776"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.3.0/0x0-git-linux-arm64.tar.gz"
      sha256 "4400f2ed187bb7be1371e2a978e78b9b6fe2b0667987741783cddc39b0f70237"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
