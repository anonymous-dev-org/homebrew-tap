# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.1.1/0x0-server-darwin-x64.zip"
      sha256 "ed541b4a3dbdefefc179f4c49ba7bec374e25db7b94a4a0223114552a47f3190"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.1.1/0x0-server-darwin-arm64.zip"
      sha256 "308a8aa5ac23d733d142b160a0e1112ba31fa55ce3ba0ac3d2718932fb92fb46"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.1.1/0x0-server-linux-x64.tar.gz"
      sha256 "17836c57c6ed0dec5532c679f3dfc35a9806bd268eb02e58e1baedec45e543f2"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.1.1/0x0-server-linux-arm64.tar.gz"
      sha256 "e7a2c441e682a46aabf172fafaf17d19b35414f6a34ddf82065bf56c6738e9bc"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
