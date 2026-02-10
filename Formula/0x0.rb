# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.2.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.1/0x0-darwin-x64.zip"
      sha256 "06a79a3e792585fd784abbdaef99ca165877a993263d30251c4134a8c2ded0f7"

      def install
        bin.install "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.1/0x0-darwin-arm64.zip"
      sha256 "69e166da561899a3b43648f064bd0c420e7bb1c939228d487f23f7e7f75d1ae9"

      def install
        bin.install "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.1/0x0-linux-x64.tar.gz"
      sha256 "03d1c39c664665f6e4ed7ab099077b02aa9d22b54b22c34081074734cfe3ac33"
      def install
        bin.install "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.2.1/0x0-linux-arm64.tar.gz"
      sha256 "1632ad71c918d5685736211a948725bb5dd85e8e8457df4d5a9da09c2aa19f6f"
      def install
        bin.install "0x0"
      end
    end
  end
end
