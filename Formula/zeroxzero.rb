# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "4.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.2.0/0x0-darwin-x64.zip"
      sha256 "93d1b60f051ddfc68e98ba260f48e3ae0041c24282abb45e2dab33d0f0a03f16"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.2.0/0x0-darwin-arm64.zip"
      sha256 "0d346c2927a19786203977b75855138ff76685aae8cc8b73d8593298653c9e5f"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.2.0/0x0-linux-x64.tar.gz"
      sha256 "8ddad3ac388b36a86c764cfa6e2c33aac8fc94a537ff3e2e66f4a4ce39f3ca20"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.2.0/0x0-linux-arm64.tar.gz"
      sha256 "3525608f93eb3d6c26e423ad99d86a0295f12909b55183dea0c4f825776ca38d"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
