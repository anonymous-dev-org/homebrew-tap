# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.1/0x0-server-darwin-x64.zip"
      sha256 "48a6345a1ca3bd38142b778cd6921c2a5388ed26d17dbe3d1dd69e3db809296b"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.1/0x0-server-darwin-arm64.zip"
      sha256 "ca296fb979e31b176a5cb5a0ccdfaf41fe8caf270515ec9b5d5ce6578b0b9c72"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.1/0x0-server-linux-x64.tar.gz"
      sha256 "27d70314914b2855f79adafdfbb310ca150116398e6522686ba0c377c86cf1ec"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.5.1/0x0-server-linux-arm64.tar.gz"
      sha256 "56903ffcf2fd72880bbdc66ae936850f41041cd13a4c359a4be864e3176ccc8e"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
