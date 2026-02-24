# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "4.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.3.0/0x0-darwin-x64.zip"
      sha256 "34cd06ea48fbb76046468efbdd48c88bcd7afc749f54e7254f22fca6c9f2b1a3"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.3.0/0x0-darwin-arm64.zip"
      sha256 "7ac0cfcb296bb140b9bd261794f8481e21adcf11ecb3d3fdda7a3c6461249756"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.3.0/0x0-linux-x64.tar.gz"
      sha256 "f9567f26601fba94212ad56f1d12ae2615a45c2980c00f479817101849aef87a"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.3.0/0x0-linux-arm64.tar.gz"
      sha256 "89c0f2b7e68bd263017e803f3bccb31f17b4cda482bc5b35a43667a9bc62d329"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
