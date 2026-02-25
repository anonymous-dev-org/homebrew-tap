# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "4.6.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.6.0/0x0-darwin-x64.zip"
      sha256 "65c34898c79702ff7d9b5ffff1175e9d55305f9f10fd4ab4282263fadac139af"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.6.0/0x0-darwin-arm64.zip"
      sha256 "bc2fd6e36c55e7112c2b39ce19051c9da2c6eecfb1debfa7067f374ee586ca8a"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.6.0/0x0-linux-x64.tar.gz"
      sha256 "c4c2fdccb37c826bd4b4c58d7e6dfa9457d520aeaac2940449aaf9405e26eade"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.6.0/0x0-linux-arm64.tar.gz"
      sha256 "3afe1d801ab6a03e86976a1f027a5d472d58f4b0d6d062345212ce36cbfd6897"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
