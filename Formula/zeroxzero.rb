# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.6.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.6.0/0x0-darwin-x64.zip"
      sha256 "092819ee570ae2eb84083c5378b73184a0a8a98937d927cc8b010bc4d54f63b8"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.6.0/0x0-darwin-arm64.zip"
      sha256 "9c41a895c0c7964ba9a73382ae8487cd2f67a53895f8ed42f305bf0cb40b3847"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.6.0/0x0-linux-x64.tar.gz"
      sha256 "dd6f4948b9f2ff2ba3943f73398d2d83f4c09c27361205c14f0920a810611474"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.6.0/0x0-linux-arm64.tar.gz"
      sha256 "dd2bedf7472134f5cff34eb7d6fe0d2451f443d99bff7056c7dfe2f78d4d81bb"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
