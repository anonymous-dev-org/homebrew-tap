# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "0x0 execution server for AI coding agents"
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "7.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-server-darwin-arm64.zip"
      sha256 "f1f5bb579cbcb33cf622d099637a24ec7d3b6d8f6e87fb4fd4f4cdfadc3429b4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-server-darwin-x64.zip"
      sha256 "ddbbc02263b045993f8cbe7457b22534f2a22bc6e452588db2e6b6c92f244211"
    end
  end

  on_linux do
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-server-linux-arm64.tar.gz"
      sha256 "7ab6271ee490c257902975bb75bd2d51c70965b70ae1da712b8ba9bcb8fd9c5a"
    end
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-server-linux-x64.tar.gz"
      sha256 "b7d537c3a21ea85ea7782c40a9bb1f0b5869deadae72b847d4837e364a1413b2"
    end
  end

  def install
    bin.install "0x0-server"
  end
end
