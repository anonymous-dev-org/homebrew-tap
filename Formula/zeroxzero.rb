# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.4.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.4.0/0x0-darwin-x64.zip"
      sha256 "ee5449994eca85bba35d82641032d014c1d6ea3087c10ea375908a54a8332a9a"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.4.0/0x0-darwin-arm64.zip"
      sha256 "0ad0055627f9e42065753f0bc2ecd4894f7115ae19ee7677f6e683295670e187"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.4.0/0x0-linux-x64.tar.gz"
      sha256 "4503fc0fe963c3d3e648b83ab5fa579090f4eb2448316fecbb2b8041791c6bfa"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.4.0/0x0-linux-arm64.tar.gz"
      sha256 "fc386a2fbdd6faa1e281adc2c13f49f25525d60085da185680b6db81ca43c9d0"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
