# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "0.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/opencode-darwin-x64.zip"
      sha256 "e48d6ff5df88edb5b58a0a4add03d187ec3db54437e15511cb052d2abf13c42c"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/opencode-darwin-arm64.zip"
      sha256 "881a2ef685e8ce6753eb1955973a2e2fe3d9d248f4275cd522f95de7a120aa5d"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/opencode-linux-x64.tar.gz"
      sha256 "db41f9abe51803197ea871abdd738db73067fb96b9d74edcd14619ca3fb199f1"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/opencode-linux-arm64.tar.gz"
      sha256 "acd9ae3f6cbab7323d1ebf9fb23dfb6ecb8c9532f9346bfa8d0590fa22795df3"
      def install
        bin.install "opencode"
      end
    end
  end
end
