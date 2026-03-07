# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.1/0x0-server-darwin-x64.zip"
      sha256 "d76c9b502055ccf684bb9ea0f58a291d231898aed54cb8b6d1d029d8dd03ea14"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.1/0x0-server-darwin-arm64.zip"
      sha256 "054e7cbf59b7e70c5ffb200e005457e7154ae09d96df669aaf3afbee5162a461"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.1/0x0-server-linux-x64.tar.gz"
      sha256 "061bebbd130f4047b14b5a92e083822505922cadfb94aaeca135828e1258b8b9"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.1/0x0-server-linux-arm64.tar.gz"
      sha256 "9734a066b4a30cf7758fb06eeec611dae305bd8bdce139e5d7326e6e9504f44b"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
