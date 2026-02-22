# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.0.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.1/0x0-darwin-x64.zip"
      sha256 "e9c21c55adee8ad0379722f791ebdd38ab2c344c6661b9a0ca3500be95e62b71"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.1/0x0-darwin-arm64.zip"
      sha256 "d11f48f6a855201a7bdab31600ab25450fdd44a67605fa571145434758e9a352"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.1/0x0-linux-x64.tar.gz"
      sha256 "63338b185829fdf53351ae2b800c733d7def3a819c6400ce0d5cc64f192e493c"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.1/0x0-linux-arm64.tar.gz"
      sha256 "a8f26db6c9ca7555fab317c679843fb6ab1c12d6a4505667d8b7f09b7cc37e7f"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
