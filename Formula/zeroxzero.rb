# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.2.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.1/0x0-darwin-x64.zip"
      sha256 "de76384f8e365ae68bd78148d8e8a9ea64f134f7be751b66604006e959946751"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.1/0x0-darwin-arm64.zip"
      sha256 "4ed75ffd97df420169d45a6d789c0a3e524e28ec4fa142b39d3504cc26064360"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.1/0x0-linux-x64.tar.gz"
      sha256 "2f42f068567bd347f5ad714424907770cf59af4df82487e56093656e874ddf9d"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.1/0x0-linux-arm64.tar.gz"
      sha256 "95334aa6f571aa1763f754d90c5af9107846c6b252f40c47f764c92e07454724"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
