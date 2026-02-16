# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.15.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.15.0/0x0-darwin-x64.zip"
      sha256 "49df4d7219d2637d635945a842162380ddb90e8dca10117517e275d0a59c002b"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.15.0/0x0-darwin-arm64.zip"
      sha256 "cbabd6819a031f1b5693c50cbea19d19d7f8869b4afd699ef75fd1ce93a83c01"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.15.0/0x0-linux-x64.tar.gz"
      sha256 "30ecbac1e8b1f83ba3a9e60fe21b8c1dc3a37b1da1941b14c39d1619ce1ba3d5"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.15.0/0x0-linux-arm64.tar.gz"
      sha256 "17604c91bc35c7d95e2652de5d88f6dc47a1559f3cc766a46dd798c4df12bc29"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
