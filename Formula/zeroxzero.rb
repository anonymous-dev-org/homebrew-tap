# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.2.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.3/0x0-darwin-x64.zip"
      sha256 "17d612b3132bc4224c9eb81202d47912a1c43dc608f3294215a0abd8000cadc7"

      def install
        bin.install "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.3/0x0-darwin-arm64.zip"
      sha256 "5e3b6f08dbbab7c1e3751b56bfcd4d1920c4a89aed57abd28591758c547cdb23"

      def install
        bin.install "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.3/0x0-linux-x64.tar.gz"
      sha256 "3432e36f001a4fc515f82b24c157ca5934bcebe6877fa9cd68588d49f907eaae"
      def install
        bin.install "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.3/0x0-linux-arm64.tar.gz"
      sha256 "f304c82fb871796d31df51320066d23e3e3ffe90ab97719bd03b5d466e0cbda3"
      def install
        bin.install "0x0"
      end
    end
  end
end
