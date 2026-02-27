# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.2.0/0x0-darwin-x64.zip"
      sha256 "7b19f4969b1e7806ba42d772f95049cf45ae1d944577201826cd516f3c826989"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.2.0/0x0-darwin-arm64.zip"
      sha256 "8c90eb1fae5a2bba133df2c7b60631946157bdd2ef371f1aa7b55e8f24d1083d"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.2.0/0x0-linux-x64.tar.gz"
      sha256 "75b11ab43db1452392ef4dfd88358d8e4531db7159cabc7675e69ac772bdb85c"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.2.0/0x0-linux-arm64.tar.gz"
      sha256 "2949c63d8ca8b4f48bfad1ac3e9b737bc0e12197375cbe77062f7dd9c7a5f1ec"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
