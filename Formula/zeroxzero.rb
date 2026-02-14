# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.9.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.9.0/0x0-darwin-x64.zip"
      sha256 "8f2961cc4688dba3ff033ec8a72da850d18edaaa03dcc34054b5d50cea60b93d"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.9.0/0x0-darwin-arm64.zip"
      sha256 "20b1c3a0bd44c9d00a39fae354256f0a2c89ab9a815ed9ddf4927d6595d309e9"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.9.0/0x0-linux-x64.tar.gz"
      sha256 "1ea1bcfc5102b7225beb352032e222def634a724d7fc7bceb1adc55bd546768e"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.9.0/0x0-linux-arm64.tar.gz"
      sha256 "a2474194bf2ec1543cf058526cc523d1420ab5c9a0396ad524b4f0fb93f06a58"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
