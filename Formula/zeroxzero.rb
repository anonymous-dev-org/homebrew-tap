# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "0.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-darwin-x64.zip"
      sha256 "66f8c5146e71523ddbd2a4f1dfe9851a56373a3f2b89cd471074fceac2a242c3"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-darwin-arm64.zip"
      sha256 "68fc912ed1ec3a52a1ca53f02089cecb43010cd1a07470b11491834148439550"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-linux-x64.tar.gz"
      sha256 "19c651ba9ecee475e0356d066a23112e57f35709808075c40556862f565e93bd"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-linux-arm64.tar.gz"
      sha256 "c1893b13425d42bd23c1af094bef583b95d49f6fed3d979317351d9162cf7894"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
