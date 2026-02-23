# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.0/0x0-darwin-x64.zip"
      sha256 "927fc7543826b58451667bcff0ebe10b32cac725968559f9611f6eff351f0bda"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.0/0x0-darwin-arm64.zip"
      sha256 "87744b0420c325b0e70ad40ee0e8aa0e3f3b9a68559a147ba5602c819cbd06ec"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.0/0x0-linux-x64.tar.gz"
      sha256 "68d8aae86c31b2b25493ea6a9a8ab1bf6b83deff47c2d5372b33c1bfa9ae6ce8"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.0/0x0-linux-arm64.tar.gz"
      sha256 "5cfe2a81ce8ded7e0cb082d8067dbfa67b5ba11a17b0d265929104dd9a518bec"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
