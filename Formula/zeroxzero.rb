# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.3.0/0x0-darwin-x64.zip"
      sha256 "257f3d5b1efd56e140cac33ac5dc44d4546431ad723d37e28a941738664af527"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.3.0/0x0-darwin-arm64.zip"
      sha256 "a98da3b18be7351bc827dce501dd3dcbcfedbdc3d1b80920d7eab8f4ac5eff1a"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.3.0/0x0-linux-x64.tar.gz"
      sha256 "09c077548820fa09591849a58d7b822d9bdbbec166813478ac3a3ca733534dae"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.3.0/0x0-linux-arm64.tar.gz"
      sha256 "d2ede0f2afb0ded99905ee3709a4ddf4afa4caaa00dfc41c292e78997dc050f6"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
