# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.3.0/0x0-darwin-x64.zip"
      sha256 "4c66cb65b895e3b92424a6851c78f4c6f57ec7260d1b5373528a25d1994023ca"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.3.0/0x0-darwin-arm64.zip"
      sha256 "ddb9f3df1188f1f6bb7369cb762d2c49f6f3cc7200a1ddbbf61097aae468d8ef"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.3.0/0x0-linux-x64.tar.gz"
      sha256 "8dc7eebcc2f4d163d1331038ac4f960585cc0e5c55cafbcc9f26ec297e1b5790"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.3.0/0x0-linux-arm64.tar.gz"
      sha256 "dbde655cd88332c2fb8bcc896c1e52b7f392bb9c1eb288eb4370a4e877e5a48b"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
