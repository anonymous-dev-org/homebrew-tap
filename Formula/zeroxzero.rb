# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "4.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.1.0/0x0-darwin-x64.zip"
      sha256 "1397ab248359ef1effff016a41a2838a80870184cba3036e566d6f194b0f41ef"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.1.0/0x0-darwin-arm64.zip"
      sha256 "97f3e8a1aec2eedc0f3d17190fd8040a91d287cb30abc1865cc5c4f38b1f8e12"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.1.0/0x0-linux-x64.tar.gz"
      sha256 "f08e287ed4f6dfb0894c44faf25936ff2d2ddf0fac1ea69208a61384297203ed"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.1.0/0x0-linux-arm64.tar.gz"
      sha256 "4bbaca0fe5c83ee06a5d574960ff6e7c28ecf698b7900c96b7c8292e94bb6801"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
