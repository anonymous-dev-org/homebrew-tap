# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.7.0/0x0-server-darwin-x64.zip"
      sha256 "e16073718f41e3732d36f51b34f9c3234947ddefd4f54796ca16b6092d3b1c65"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.7.0/0x0-server-darwin-arm64.zip"
      sha256 "6c1cc2d4d8a925ee11cdce9b82e39932adaed041fa42953ba54b3bbff79a111d"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.7.0/0x0-server-linux-x64.tar.gz"
      sha256 "a92b5743428d54134ea589b529735bf4afc0efd1c1233a3ac1730e03aaf94012"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.7.0/0x0-server-linux-arm64.tar.gz"
      sha256 "4a14c27719509f1b13b40e9ae8560a3782861e9456aa9d97c26014eb1b70c59f"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
