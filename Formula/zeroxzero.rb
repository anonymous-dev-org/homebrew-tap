# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.3.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.3.1/0x0-darwin-x64.zip"
      sha256 "d093609a3550e4d077e86e78ef6a9bfabad0f091c7e3583c457578230e78ca2b"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.3.1/0x0-darwin-arm64.zip"
      sha256 "a9061333079826ad476488f9d3d5446f29412df4479c80ff8b3fb796174a0785"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.3.1/0x0-linux-x64.tar.gz"
      sha256 "9fbb31bdae3710761661a3f677b8b12ee444d47508855b6cf026092b3258d95e"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.3.1/0x0-linux-arm64.tar.gz"
      sha256 "076f496215309c2f09cc94f85470e1752c1cb91d0cadbbcbd3872a8a1c543a61"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
