# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.4.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.4.0/0x0-darwin-x64.zip"
      sha256 "57ea0424dbb10a8b0f5ed887bffea2793fad82a06c674499f747421b1ae939b3"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.4.0/0x0-darwin-arm64.zip"
      sha256 "0656f2fd03e6a5ffa8975fe8c8597e8a8a0c0949e5e19d652b96c8caa71d52a0"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.4.0/0x0-linux-x64.tar.gz"
      sha256 "8d180d75219d30ce864f11a6fc382d47cf73457ade1af1cfdae29ff969ec25b8"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.4.0/0x0-linux-arm64.tar.gz"
      sha256 "9dd03773f684759d933426547dd167b3a021b0f744fc1ebdb1811f24e79ea3a6"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
