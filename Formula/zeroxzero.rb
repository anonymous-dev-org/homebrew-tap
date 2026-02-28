# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.5.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.5.0/0x0-darwin-x64.zip"
      sha256 "7fa76c9940dfb026e57123660f0acbd10aac2b8241ea2dae714026acea551b1e"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.5.0/0x0-darwin-arm64.zip"
      sha256 "123760841e7142d71b84c4f4715985bdc6c7f8b23e00a032c3ee7afc5f24a7f0"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.5.0/0x0-linux-x64.tar.gz"
      sha256 "0b7f3d19f45299b92faa6dc694e077dbdbe640b917a0b9b7e489490c5024f548"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.5.0/0x0-linux-arm64.tar.gz"
      sha256 "431263074dda3e6959990c8f1a95f21c41aa682357dd96f5c3032ff410ed541e"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
