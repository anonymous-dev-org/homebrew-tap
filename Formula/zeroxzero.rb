# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "3.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v3.0.0/0x0-darwin-x64.zip"
      sha256 "35d641c3944f0c866f8ccf95e55619afb5121e54c53e2e635abd59c25b9fed8d"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v3.0.0/0x0-darwin-arm64.zip"
      sha256 "60328864bb00cc34071d76a903aa67ab62685b3f91619af8d998ce96986b038c"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v3.0.0/0x0-linux-x64.tar.gz"
      sha256 "c3972fb69d44ef0f1ca673b1b1c12480f6f5deb48df68f4d62ac73951b1694e4"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v3.0.0/0x0-linux-arm64.tar.gz"
      sha256 "077a1e0d5a32598b6a4097d2e0a1148d7e4213037bc02c63ea66cc2c6e10facf"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
