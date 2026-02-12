# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "0.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-darwin-x64.zip"
      sha256 "69fb7cc93c35943f33ad7c45c3839b876e4d82d7d612276b94d5723ce33025d7"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-darwin-arm64.zip"
      sha256 "15228e2efed35626d7980a8219c9a3a04723ddbb60e0db6d1636b57afb391b1c"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-linux-x64.tar.gz"
      sha256 "e86ffbe5f65d83a995e5359441ff59b2da4924a387f1710276c03fd991a86417"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-linux-arm64.tar.gz"
      sha256 "8b1198aa5bcff6e2af68d403ad44aaa3c6f3ffd72549c3c06ffa47cb924fbc5d"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
