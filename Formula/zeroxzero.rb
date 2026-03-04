# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.1.0/0x0-darwin-x64.zip"
      sha256 "58aa4759d4ff312ed71a715100da1e9524d3d785c473076672f7a2d4ba0e0d4a"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.1.0/0x0-darwin-arm64.zip"
      sha256 "0382f2ab6abcfb9deab0be6f4a36c2fce70fa2e0abd8a5563e907dbd2bece4be"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.1.0/0x0-linux-x64.tar.gz"
      sha256 "9a099e97d0ff92c0360dc750079d0aa0bed2f7d785f4930553fd263300753d33"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.1.0/0x0-linux-arm64.tar.gz"
      sha256 "25516443b0096e94c9dc399f57a1d803811a3494dfe33766c841604d13668883"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
