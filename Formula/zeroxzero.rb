# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.12.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.12.0/0x0-darwin-x64.zip"
      sha256 "f3fcfa9941bf56c00748deb6c7d4912c745a17cda19aa80008daca2e306c1404"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.12.0/0x0-darwin-arm64.zip"
      sha256 "5cc9fcd34b604a191159e9edf8454b7749d3d9a52076bfedebc6693ebcd40ba9"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.12.0/0x0-linux-x64.tar.gz"
      sha256 "3a80fbb32013d90b5be79fab0d4e73edcebf4731ae01b0daf00dec78afa2c7b4"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.12.0/0x0-linux-arm64.tar.gz"
      sha256 "e239f12e110e53ad4968ffd4af1957ad9a800e90a4f90282a101be2072cc0097"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
