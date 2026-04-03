# typed: false
# frozen_string_literal: true

class ZeroxzeroTui < Formula
  desc "AI coding agent TUI — cross-provider terminal interface"
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "7.0.0"

  depends_on "anonymous-dev-org/tap/zeroxzero-server"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-tui-darwin-arm64.zip"
      sha256 "0e8abd567e16f1ae6f3ded9135fe3892bb37cab8e6aa9e467e16151f44e2bf84"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-tui-darwin-x64.zip"
      sha256 "457314e1866f1983be98e25ed2bcf5a557178a6f9a5c8c6990cb73bbfee86783"
    end
  end

  on_linux do
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-tui-linux-arm64.tar.gz"
      sha256 "26b295954f61d86a89af761413272f8892b10f1462837205b3a35ea711433170"
    end
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-tui-linux-x64.tar.gz"
      sha256 "0fdbe98c93d0a36c192d574df667a4538e324b5963c7f47460eb5993f629609d"
    end
  end

  def install
    bin.install "0x0-tui"
  end
end
