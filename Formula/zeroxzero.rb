# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "4.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.0.0/0x0-darwin-x64.zip"
      sha256 "933cc1dd885fead319f3bac76f15dc62866f0b94816f36cd15aa20aa410ebefc"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.0.0/0x0-darwin-arm64.zip"
      sha256 "8e71af568b6394d6e1f0feffa727f82f8da86f6480f13549aeddd25df18030a5"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.0.0/0x0-linux-x64.tar.gz"
      sha256 "7b3926a2da82d358b3480ddec927a48d4d4d30ea0a6d3128f6d6499c73ffb7fe"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.0.0/0x0-linux-arm64.tar.gz"
      sha256 "089aa673a8f3c0869a5a2540bb18f058fa5fb911f0685ae8266de6f321f5c3dc"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
