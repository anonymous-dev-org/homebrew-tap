# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.2.0/0x0-git-darwin-x64.zip"
      sha256 "3de2bbe341139bc075b2afd880809259a7c3fe2ff777d7256a8bee768ba85423"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.2.0/0x0-git-darwin-arm64.zip"
      sha256 "0d4f1e2c0713067bf911ef74fe06e532392657766231ebd428fcf5c448737c26"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.2.0/0x0-git-linux-x64.tar.gz"
      sha256 "d3654491552d4585eec60c919bd8ee778c61ac182b88958fb3b73d3cb03d05da"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.2.0/0x0-git-linux-arm64.tar.gz"
      sha256 "302f57607ca2d3208005d9ea81600e94dc2367269e1e163c37255abcea1765a8"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
