# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.4.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.4.1/0x0-darwin-x64.zip"
      sha256 "4a47751ac8e98fe0e2349ffca1e0d4e68a9ba98a561856ee9ed703395df1f7a8"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.4.1/0x0-darwin-arm64.zip"
      sha256 "488bcc3ad1ba7da9e65cdeeba281a32718220f93702b507ef794ddd929137153"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.4.1/0x0-linux-x64.tar.gz"
      sha256 "08d47417d973e5cc822620a115a45091b3080c3499bb7d8f0596e011d2af6b3e"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.4.1/0x0-linux-arm64.tar.gz"
      sha256 "e830dab1c82fdcb7b90df0dee08df889bf93ca9c3fe443cc8266878bb9d132f1"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
