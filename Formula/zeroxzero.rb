# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.0.0/0x0-darwin-x64.zip"
      sha256 "7423fda3c959442930a67718d7ac2f0304962f9ba4ce0f3dfc5b9f3832b22a12"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.0.0/0x0-darwin-arm64.zip"
      sha256 "aafa18697d7ade7de6f590487e3d76ef2d8231d241d7e47b968e3bb0529ad269"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.0.0/0x0-linux-x64.tar.gz"
      sha256 "061febeba9fbaeec9abdf7459c85515c606ee259143c36351ace82af63e5d6f2"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.0.0/0x0-linux-arm64.tar.gz"
      sha256 "5b1eabb7c546829d19ead9dab6c1137d6810defcac03cbbb3c3f6a5a7f8bdfa0"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
