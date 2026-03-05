# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.3.0/0x0-server-darwin-x64.zip"
      sha256 "e69c7fda1ff1f9e571ea30da98b02b935d39fc884cb35ec8e68fb515f94d07bc"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.3.0/0x0-server-darwin-arm64.zip"
      sha256 "2df275cdf55bbb6a9d06d32c968a49263213304178f252a8e1077ce2af4e82b2"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.3.0/0x0-server-linux-x64.tar.gz"
      sha256 "041f7207bc9efb46d9345aa254d846a0872502d9a21ab314a512c16478646c13"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.3.0/0x0-server-linux-arm64.tar.gz"
      sha256 "d021cda0c304a4d45b49e5e709f2c524f148dd64f2987834c4e55ba354c18a2b"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
