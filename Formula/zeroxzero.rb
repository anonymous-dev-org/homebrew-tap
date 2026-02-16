# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.14.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.14.0/0x0-darwin-x64.zip"
      sha256 "28892e5a7bd8be513cf0557df02ec5830d8eae46d6b2affe5e8e1f1127be1f5b"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.14.0/0x0-darwin-arm64.zip"
      sha256 "7bad16ba63d5f0516b37efe058ea656db6db2147dd42721ffebf9996e53fc1d1"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.14.0/0x0-linux-x64.tar.gz"
      sha256 "ce8721cb462ff176ccc29e7a4f5199ed8190230f35b21b6b5f43a889067c9396"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.14.0/0x0-linux-arm64.tar.gz"
      sha256 "4fc955411f8f514fa108f98ec8ba7144e464d52d38f1479106099d5319066189"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
