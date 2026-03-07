# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.0/0x0-darwin-x64.zip"
      sha256 "f5555083c078de069827447f2de672e2a5c18586c78caebfbb6f5cbf68924f4d"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.0/0x0-darwin-arm64.zip"
      sha256 "8ce8f9bf820f68a6c3bd5edfca3b5a84ace2932d459d2c4e04bb58c913a4c661"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.0/0x0-linux-x64.tar.gz"
      sha256 "a17948ed3c2d37939cd44315a4d4b6fa0a6717edaa4dc454b81b1e5aaa829934"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.0/0x0-linux-arm64.tar.gz"
      sha256 "157820ac5efeea1f4fbd331632ad7807ab432c8d265126c1d039b384f53f2afc"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
