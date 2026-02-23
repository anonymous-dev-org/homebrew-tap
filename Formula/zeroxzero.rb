# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.0.0/0x0-darwin-x64.zip"
      sha256 "c6bcbfcd04abe8753bff36678b44497e65f61532aa03dc233e8ea1dce9e64a43"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.0.0/0x0-darwin-arm64.zip"
      sha256 "747980f243f602cace01c21d69b76e4b925d0a00d88f5db5c104658dbab48126"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.0.0/0x0-linux-x64.tar.gz"
      sha256 "ad1cf416bf873280b95f50316aa2dc369b24865cd7b51b6ed73e5033f4833cb2"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.0.0/0x0-linux-arm64.tar.gz"
      sha256 "14fd81e5741ce1a92ecf09b2c0b9e90e6adf3184650e231784597def105cec15"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
