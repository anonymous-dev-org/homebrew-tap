# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "0x0 execution server for AI coding agents"
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "7.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-server-darwin-arm64.zip"
      sha256 "f6111723ab015eadf592c7a8b203555596fbb60a751b5ae648851590c7b90dda"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-server-darwin-x64.zip"
      sha256 "293a8b328a45d13e41b13e78a82140c630284b623c55cbbbf322383feb747231"
    end
  end

  on_linux do
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-server-linux-arm64.tar.gz"
      sha256 "3c65763897e176293a41d52ce47f3e665f5b5e1f8a2830dc2075ef2059a09098"
    end
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-server-linux-x64.tar.gz"
      sha256 "ec19d58c8d3e5e1ce08a2658d4899fb21bf6529ab7445ab5e9e8cbabdb1f1623"
    end
  end

  def install
    bin.install "0x0-server"
  end
end
