# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.0/0x0-server-darwin-x64.zip"
      sha256 "f4cfe789ad72aea2412a918ac9adb1cff915b2b1a520c0d7a28f27d4910208e2"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.0/0x0-server-darwin-arm64.zip"
      sha256 "f303dcf284f182f941093449a8940d8faf582afe293d234b719b79f185775a05"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.0/0x0-server-linux-x64.tar.gz"
      sha256 "0b48fa02e495ef6a4cbec53569c2202142dcc8eff8c717ed59be721f36d34bc9"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.0.0/0x0-server-linux-arm64.tar.gz"
      sha256 "f8aed66829c86c4cb08a53ce0f48e839a2fd1278adf8a73cd57492937215fa14"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
