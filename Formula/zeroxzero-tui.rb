# typed: false
# frozen_string_literal: true

class ZeroxzeroTui < Formula
  desc "AI coding agent TUI — cross-provider terminal interface"
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "7.0.1"

  depends_on "anonymous-dev-org/tap/zeroxzero-server"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.1/0x0-tui-darwin-arm64.zip"
      sha256 "7e4383ec76d361cab20dc84bb7b00be0e2e91119aa9c8d04275027c8ad4e95e4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.1/0x0-tui-darwin-x64.zip"
      sha256 "cc859aaec346dcc2bd0cacabfd47c18f3088f81471917387a7c38c66d120ebfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.1/0x0-tui-linux-arm64.tar.gz"
      sha256 "c82794d6a052868d83fd18e35ee548b47b48c6543fe20b5dcd43afe58feee6e7"
    end
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.1/0x0-tui-linux-x64.tar.gz"
      sha256 "dff48ebf40f008c95f2dfd707bd3e93ece1cffba1ea2ef35613820b5679380ea"
    end
  end

  def install
    bin.install "0x0-tui"
  end
end
