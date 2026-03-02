# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.1.0/0x0-server-darwin-x64.zip"
      sha256 "9f991b029dddcd2bbb8b63bcf9553442a8ee0aff5b7f4d9ef1084b2c42107eca"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.1.0/0x0-server-darwin-arm64.zip"
      sha256 "27716a495e9fcbd2d1101983bd2554acf8fdaa5e804955db73f5c18967e132ca"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.1.0/0x0-server-linux-x64.tar.gz"
      sha256 "54583446f19b3da4ba4a3534a5df0bb53c9c8d5d1b9b4a8876a91b91ae7fcf0e"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.1.0/0x0-server-linux-arm64.tar.gz"
      sha256 "56f0a1d5914084589aa69677e50072807bc4d99101ee060c61dcc4a6bf0c690e"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
