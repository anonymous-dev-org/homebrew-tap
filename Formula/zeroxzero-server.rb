# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.6.0/0x0-server-darwin-x64.zip"
      sha256 "460cfc9c4781408de71b350b46dfd2e05a5c552b6a0c99481d6fc165aabe9424"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.6.0/0x0-server-darwin-arm64.zip"
      sha256 "ff6fdd04b0f460505dd7219f1b761aab12d6d2f0a64e91a398eb05e2ac0884e5"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.6.0/0x0-server-linux-x64.tar.gz"
      sha256 "4b224c79e2d5e672a7f6fe3ed85a2020c39dc839e55fb8e424f1d756eab96806"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.6.0/0x0-server-linux-arm64.tar.gz"
      sha256 "16a47b07e260ce8bf3bb9561af0ed68d785a89f28bbba3f38e2d7cd1ab4a461c"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
