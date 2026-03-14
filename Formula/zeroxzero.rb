# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.5.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.0/0x0-darwin-x64.zip"
      sha256 "a59e17817960bd9784e0194c8c048880ed723760969cb265aa67562972535ecb"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.0/0x0-darwin-arm64.zip"
      sha256 "fd8cd9a29bc7cd6d5e430fe1eba0d3f6add9a06da76dfbff289c62277d91a14b"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.0/0x0-linux-x64.tar.gz"
      sha256 "6fa4635eacf4113891003d4a6b35e8a4ddad949ab2b6e2edadd1079165a20378"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.0/0x0-linux-arm64.tar.gz"
      sha256 "e3f6a49b09fc5b6f886ed02b5e42d584315202508ad186a23c313d0975191e73"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
