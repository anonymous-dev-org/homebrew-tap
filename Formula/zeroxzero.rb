# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.7.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.7.0/0x0-darwin-x64.zip"
      sha256 "cc60980b743146b4e32e36f800f22f31627ed28ea5618a1a23182308fd2b87b0"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.7.0/0x0-darwin-arm64.zip"
      sha256 "1f641959ad658bbb224a0f02b4985796a5c685a80931b93939be6b0014de9902"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.7.0/0x0-linux-x64.tar.gz"
      sha256 "a9592f6a16664118672de534f505fde677ed67fb85017d4d0574293e88e14bba"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.7.0/0x0-linux-arm64.tar.gz"
      sha256 "6d0f673c0c8d5324c262e5a7c44bd0c1aceae191b71c3a93b5972532659b20cc"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
