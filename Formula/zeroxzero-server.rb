# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.4.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.2/0x0-server-darwin-x64.zip"
      sha256 "eebc9b724f9537a7bc337a41e2ccccd0f00baf6669f26c43bb7f3e59faad4d94"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.2/0x0-server-darwin-arm64.zip"
      sha256 "5ee6f71cb8b121fdbfa0ac9c7dbd725bf5a4e11b38c1001aacf1ea95a2ceac7f"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.2/0x0-server-linux-x64.tar.gz"
      sha256 "4ff0d4a98861671d2103b18943735b41dd37cd740c9bf5dbf71b848ebef9044c"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.2/0x0-server-linux-arm64.tar.gz"
      sha256 "0ccf2f3f5fea378d27e19c79532d7446fb0c608038799178513b8dc1fa1b4d93"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
