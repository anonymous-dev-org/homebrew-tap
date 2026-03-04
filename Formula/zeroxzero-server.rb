# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.2.0/0x0-server-darwin-x64.zip"
      sha256 "3f315c32a9b72d741052ae17fe39543a49364b62ebbf19ff2bb63f40ef34fae2"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.2.0/0x0-server-darwin-arm64.zip"
      sha256 "c213cee574eb3ec31fad8bb1d8431eeca22034832ec02c1097c17e18c0d69b47"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.2.0/0x0-server-linux-x64.tar.gz"
      sha256 "1732afcc55ed74aae66db7c0e745eb2e19341fdff6c9f0f3f2a2d6f0af66270a"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.2.0/0x0-server-linux-arm64.tar.gz"
      sha256 "eaf6c127686afe344251089f65722cc747bda3566cdb22a15cc3551d61d0a055"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
