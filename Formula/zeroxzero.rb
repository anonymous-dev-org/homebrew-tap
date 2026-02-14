# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.8.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.8.0/0x0-darwin-x64.zip"
      sha256 "55076dd4c409c766f9c28b32c9791765a74d0c9b1b7b649c20263295f3793578"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.8.0/0x0-darwin-arm64.zip"
      sha256 "8d9f50d2cd45b92e97eecc0821d2e875c4cbefc01b0318f510b76c46f4aa8c97"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.8.0/0x0-linux-x64.tar.gz"
      sha256 "99ef6bd9b7dc461b7a323facb0bd1da9c9609013f9eb6dff3597c12c10583bac"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.8.0/0x0-linux-arm64.tar.gz"
      sha256 "8847938b7556dc69c34e7031032f7d0e36a0172d10f377769992974a12d0f426"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
