# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.6.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.6.0/0x0-darwin-x64.zip"
      sha256 "8b16f09c85f6aa8d19771c6d67393dd4fff48f8a6a0d1db63f24c5c6aa1b893a"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.6.0/0x0-darwin-arm64.zip"
      sha256 "8ce5b23f3200e5789da75e287e5effc9dc96f1a4b98b029bede7322a19e7f1d8"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.6.0/0x0-linux-x64.tar.gz"
      sha256 "981d5144f4cca3692f34cd243d849db3acba6e42c3158fe61bed921a150b3da7"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.6.0/0x0-linux-arm64.tar.gz"
      sha256 "f1684eb1c842ef555c56e445965283022039a06dfd4aa07023280412cb92f542"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
