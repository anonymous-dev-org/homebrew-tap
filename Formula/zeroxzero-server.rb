# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "0x0 execution server for AI coding agents"
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "7.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.1/0x0-server-darwin-arm64.zip"
      sha256 "8afbcd94b9bfc6b60e4bf69e87e899b4cbe4d0cacd1d081a32867505500063cb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.1/0x0-server-darwin-x64.zip"
      sha256 "1ecf2b04c44f35b3ca4bf45acf347d6098ed14477e797182c3e90d104737e500"
    end
  end

  on_linux do
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.1/0x0-server-linux-arm64.tar.gz"
      sha256 "6472851d8bf19cf5d913432b843ce4f29b612b2be5cb34fed59900ab41ae08a3"
    end
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.1/0x0-server-linux-x64.tar.gz"
      sha256 "92a282bb25ffc292d0060f7b91801127c0a6a7d549ede9d61c7c2ba21eb69433"
    end
  end

  def install
    bin.install "0x0-server"
  end
end
