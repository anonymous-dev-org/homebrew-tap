# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.2.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.2/0x0-darwin-x64.zip"
      sha256 "74c71a4cd234b2cc6b870f71a714ecece38192c991ecf0a4f77fbb51d2eaaa92"

      def install
        bin.install "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.2/0x0-darwin-arm64.zip"
      sha256 "14ba3cef8628c0dda5d706f58b73cd03371e27361d833775e5512c7e01a0f104"

      def install
        bin.install "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.2/0x0-linux-x64.tar.gz"
      sha256 "9e329750173e0dd5614bea1a25669582dba0855a323dccb38e128ade9d90b460"
      def install
        bin.install "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.2/0x0-linux-arm64.tar.gz"
      sha256 "f29ac457927d9f894d90b7ffbac7990d33f189ddf45f4b094de7b33480d2ff30"
      def install
        bin.install "0x0"
      end
    end
  end
end
