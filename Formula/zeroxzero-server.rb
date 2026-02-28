# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.2.0/0x0-server-darwin-x64.zip"
      sha256 "21dadec3b08bd386f04b6ab82d88afd34be7e44e9804dc3fee106cebca44e607"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.2.0/0x0-server-darwin-arm64.zip"
      sha256 "859057bf0d9ee2a2fac510c478a17adc568401ede04f08902baa94cba56cefcd"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.2.0/0x0-server-linux-x64.tar.gz"
      sha256 "2764efe9bcd74aca093f9e73abc149bdce03f7fd4c3e58b79febc8ac50c7b550"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.2.0/0x0-server-linux-arm64.tar.gz"
      sha256 "dec1218e0b913c3b2e3aef48fa330ab2f9027eea232fc94f1759e499270492d0"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
