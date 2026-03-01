# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.8.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.2/0x0-darwin-x64.zip"
      sha256 "5935738f1ecbc901345933b18618e43aacdc993567d09aab32a3708bc9bbe5ec"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.2/0x0-darwin-arm64.zip"
      sha256 "c9256a7455ef129f7f829bb348e2232deba16be6b41bc1827d75ac990c4ba5f6"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.2/0x0-linux-x64.tar.gz"
      sha256 "88b5bce1dee4a17ecb6012559000bdc4e470101675b1ee3f117942753720c8c1"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.2/0x0-linux-arm64.tar.gz"
      sha256 "5e4679019bae66d188d031f7c7dd35e6e937aa9e1094a03c9ddf3eb67ceca6f2"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
