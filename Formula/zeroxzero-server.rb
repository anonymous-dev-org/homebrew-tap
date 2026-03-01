# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.3/0x0-server-darwin-x64.zip"
      sha256 "c36eadcbebccf6d4865876cc59ef20df01f1d3c5b9a2f0a848bd7ddabf13df03"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.3/0x0-server-darwin-arm64.zip"
      sha256 "9e19d1babda7ad2164e453c0d7d7fd6d403e2b1bd07faf1b1b25e55ea688d7ac"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.3/0x0-server-linux-x64.tar.gz"
      sha256 "d6209e913e3f7d1ac219c8c989ec92a5c76d5c0e94fb79560ff68d55d5c1ae43"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.3/0x0-server-linux-arm64.tar.gz"
      sha256 "97e8ecec529c16e364a07b578edd13b2da59d777a2d4fe096ae7225114f76f0f"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
