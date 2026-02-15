# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.13.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.13.0/0x0-darwin-x64.zip"
      sha256 "2c0929b847aac955d8bfc3c492317515e5b42ed087680126cefbd7b0e9efdb94"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.13.0/0x0-darwin-arm64.zip"
      sha256 "9c06ac9d563849945a905bcfbac5a75bffef3442daeda8efd88a4df04d3f52e2"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.13.0/0x0-linux-x64.tar.gz"
      sha256 "30011c090c5e83f89ffcc41d825e8068042349eef6acc24261750ee47bd4b113"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.13.0/0x0-linux-arm64.tar.gz"
      sha256 "472ecf788d457334f6bce4a3c01761ee9db4175a92a7e47d59476aff5c9f833a"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
