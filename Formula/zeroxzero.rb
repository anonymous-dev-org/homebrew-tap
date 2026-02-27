# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.0.0/0x0-darwin-x64.zip"
      sha256 "1627bb9b2317730a9cf76c61e8f379ffe9479032438e5af2b6d7362884d92a7f"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.0.0/0x0-darwin-arm64.zip"
      sha256 "36cb2c631f0c8f631b5c4d98738ddd7c740e534bf7c74dfda0dc6bbd0e251111"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.0.0/0x0-linux-x64.tar.gz"
      sha256 "e4411acb8f18d799dd01c40c922e59fc94fc72147bb08f0fde58bc9cf006aa7a"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.0.0/0x0-linux-arm64.tar.gz"
      sha256 "f08875facc506e773067aaa181e68c2475319eda6f74b7c68c953a3aa1483fe1"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
