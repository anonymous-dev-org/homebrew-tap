# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.0/0x0-server-darwin-x64.zip"
      sha256 "24ca16a93a76df84023e02681a36e0894190cdff016481dbe673da51c31055c9"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.0/0x0-server-darwin-arm64.zip"
      sha256 "700f1acdbf718a1b1890019802b332793454472e95d56d9f3b02826bee858432"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.0/0x0-server-linux-x64.tar.gz"
      sha256 "3c680a13309585bf931f8b02cbf42f2b515acab12f39989f1d2413ab3836d84b"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.0/0x0-server-linux-arm64.tar.gz"
      sha256 "acbbad5c441ed1a2cc8bd6eff0efbb05c59e61b9bf1d0a9b723b4961d5bb0ed7"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
