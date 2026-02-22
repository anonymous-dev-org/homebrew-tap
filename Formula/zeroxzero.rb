# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.0/0x0-darwin-x64.zip"
      sha256 "a3050350a81410f4ca3e7f7710e170427e953e07410df7b5d2e617408bdb2a20"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.0/0x0-darwin-arm64.zip"
      sha256 "388b26a4365ffa4dcc90767578d602012252070062f89fe394b7bdc3c2bb0866"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.0/0x0-linux-x64.tar.gz"
      sha256 "fda0b3fa45caef25f5fbae344424e6fb92777c7265a1a61a41c8b0fb47b7745f"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.0/0x0-linux-arm64.tar.gz"
      sha256 "726435ccdf5a1869ac2ee7876d8352117a6eac91f7b2a52ed2adfbc01b53d1f5"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
