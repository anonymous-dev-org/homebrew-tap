# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.8.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.2/0x0-server-darwin-x64.zip"
      sha256 "cdfbe7b30790cf750327b43434748ed457a27144841ebb782c69da06306a3fca"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.2/0x0-server-darwin-arm64.zip"
      sha256 "14287c6e8b431e8a0483c9ed6baca7d8dfda48edb726a9f107536759a7ce19e8"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.2/0x0-server-linux-x64.tar.gz"
      sha256 "2d24ccd5228df22873edbd73c5debb6e91ee8acb70b1fa81b176e7a04b3bcb71"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.2/0x0-server-linux-arm64.tar.gz"
      sha256 "269e786e4a75505f9ecfb09c28085098011e37e45d3c1c2b0e3fb378e0a458c7"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
