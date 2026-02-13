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
      sha256 "859b7458d54928dde94fd278d9eedb2ed3f6a0b70ae3a354408eb0e8256a2a2e"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.4.0/0x0-darwin-arm64.zip"
      sha256 "e02b6b8856a38fcdef69f6e14ec33cf972f6b8c05e97f68f3f5df17610ca41df"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.4.0/0x0-linux-x64.tar.gz"
      sha256 "e99ed0c5fc027e88885e9fd199f4ea0fcec410760b89fe69297b4d07e24fd423"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.4.0/0x0-linux-arm64.tar.gz"
      sha256 "82e7046debc4a40a737e53402e1a7e7c4ba0100154813f9c8136aa7d55068ce2"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
