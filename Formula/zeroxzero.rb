# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.7.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.7.0/0x0-darwin-x64.zip"
      sha256 "4bc6e1129d633bdd0610bd037d3466b5c9a0f195a129a61558347250fd71fcbb"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.7.0/0x0-darwin-arm64.zip"
      sha256 "7224938e8a22457e6899211c376654771e1ad6e853a0f4d77d05b7e4a0a24dbd"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.7.0/0x0-linux-x64.tar.gz"
      sha256 "28a319444414c5fe924db63547e0bc8ed96d194ee61f074a97416de4af5966d4"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.7.0/0x0-linux-arm64.tar.gz"
      sha256 "6869e037bbffeacbc1431efab4d9cc78a488cfef78019a9a200ef0304e0dc033"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
