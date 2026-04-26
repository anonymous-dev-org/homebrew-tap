# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "0x0 execution server for AI coding agents"
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-darwin-arm64.zip"
      sha256 "8346a69ce3497ddc578c2c46262fd758a00f8540dc42121f99522648d234af58"
    end

    on_intel do
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-darwin-x64.zip"
      sha256 "5c67f4601149063027fbb7b1f33766dfde74461f95fbb495f71f3b8eb3973ef5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-linux-arm64.tar.gz"
      sha256 "403df4dfe2cf1dca2ceca80cb10aace2580435e5fe7d5e090b4b200a3756f8ff"
    end

    on_intel do
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.0/0x0-linux-x64.tar.gz"
      sha256 "31788d06ecc40fac99222dea041c1f81674f5770a3b7be26bcbc65d94adca73e"
    end
  end

  def install
    bin.install "0x0"
  end
end
