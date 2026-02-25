# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "4.7.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.7.0/0x0-darwin-x64.zip"
      sha256 "8dda3e6141b5b1ccf9886391390ffcc75a0bf41398f9aae8098d7db31e7e11c5"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.7.0/0x0-darwin-arm64.zip"
      sha256 "75223aca7da62d2dcd87e3fe2574128669488df292acbefaef9b910be93b1a9b"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.7.0/0x0-linux-x64.tar.gz"
      sha256 "fd17fc12543405abf11922fc165f2ac889f8fbb3a96aa65e8e706ae2fc3392a5"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.7.0/0x0-linux-arm64.tar.gz"
      sha256 "67746e92df1b3397b8c22aa662d7c057eea21e2c09ab22d5aad926e73cf6d569"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
