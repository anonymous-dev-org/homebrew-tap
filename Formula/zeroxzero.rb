# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "4.4.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.4.0/0x0-darwin-x64.zip"
      sha256 "e0de79d6035f3ac5200f314b0d9156a62d377196920597fb6663956d92bc5fc6"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.4.0/0x0-darwin-arm64.zip"
      sha256 "f53ff9a95715456253a6978a7f9612d777f83baabae621d11f35748c24157995"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.4.0/0x0-linux-x64.tar.gz"
      sha256 "f8a8ac836c769936b526098971d7222273eda24601cd083670eadcc6f3f4a51d"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.4.0/0x0-linux-arm64.tar.gz"
      sha256 "d6d3c1f3a45911d861e8b169b2eacbfa64fb0c9405d014c152a59ac9995f90b7"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
