# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.16.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.16.0/0x0-darwin-x64.zip"
      sha256 "6e207a53baea72b23160f1cee6d9b186a758543b7e56682165db22b4f5add653"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.16.0/0x0-darwin-arm64.zip"
      sha256 "d588276095b4a5eb589ffb63c617928e139353eff51447f61f4a5c773af39b5c"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.16.0/0x0-linux-x64.tar.gz"
      sha256 "36654d4823777f9cf93c34fa3a5c192ed6c414c883784c105242e707b9f28b4b"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.16.0/0x0-linux-arm64.tar.gz"
      sha256 "bf41f7fb6edf9dad7111852ed49962979fbc7920c82df8b65a31ca29031090fc"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
