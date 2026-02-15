# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.11.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.11.0/0x0-darwin-x64.zip"
      sha256 "6ab2414f3f4831791dbcb4c2149d204d3f4afe26df542dedf8c3d5a9aef30392"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.11.0/0x0-darwin-arm64.zip"
      sha256 "a9b2e00647b5b1ac44c69f150a7b3b892d34297d0c3e18cada630aaf5ce3806c"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.11.0/0x0-linux-x64.tar.gz"
      sha256 "3b273f3e5d21d6e1d709f4d7c43529d15a5f6b26fdf50a7d49517f68c9010e8d"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.11.0/0x0-linux-arm64.tar.gz"
      sha256 "e2807fddc7418c585b84bb5cc7406ea8fb02198a449928ddfdb17bd4ae8627c6"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
