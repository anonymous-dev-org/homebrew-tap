# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.5.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.5.0/0x0-darwin-x64.zip"
      sha256 "b1720b4662a5c26b4879c33a232479a6a8861a2b9747965f4ff2e19db3d8e1c9"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.5.0/0x0-darwin-arm64.zip"
      sha256 "c7efcf7ea0c85bcb58a1b62667280edf37f5a60c1c15dca4e9f26955c787636d"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.5.0/0x0-linux-x64.tar.gz"
      sha256 "df929292931fcd6c92ca2bae809bb2c98572e51507f15f0af8d96dc155bb55a5"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.5.0/0x0-linux-arm64.tar.gz"
      sha256 "62835713e878af8a10d5d3839075f4e8347cb8f15492bb66b22c4a6a7a619298"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
