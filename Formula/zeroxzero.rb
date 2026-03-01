# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.8.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.1/0x0-darwin-x64.zip"
      sha256 "92f5d6252cf32546db7467c7d94a5e56e246190bf562a701c6db5f3e62ba7a6f"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.1/0x0-darwin-arm64.zip"
      sha256 "b9b1a5c5a854ca11db5b26ebe3eb42b71d224c182f4e1cea1cb16bce0d37a5aa"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.1/0x0-linux-x64.tar.gz"
      sha256 "31e0babacb9e0310d6a686cdfeac55d1c323bc73fbb398c89b9d136d0e28a73f"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.1/0x0-linux-arm64.tar.gz"
      sha256 "86a61cec81fbb673f922984a0738f381d139646a2d89a8d9e60303b36394ec8e"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
