# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "4.8.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.8.0/0x0-darwin-x64.zip"
      sha256 "0e7ff34db05d648dab82ba3678691c198c724d329e25fc39c743e53c9acb2709"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.8.0/0x0-darwin-arm64.zip"
      sha256 "d75c1f7e5b6ac6c03abfd016540ed49f89517767e2f33b87d42d4014983db76a"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.8.0/0x0-linux-x64.tar.gz"
      sha256 "966c218e23885472ac3bd7bb471f039295bd4c9cd7dc97165992509f77801e95"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.8.0/0x0-linux-arm64.tar.gz"
      sha256 "afdffe155a91bd50491ce2b67722204b213799dbda37723aead26dc689063ac0"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
