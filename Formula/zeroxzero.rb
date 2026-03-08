# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.3.0/0x0-darwin-x64.zip"
      sha256 "684cc963c1ff68b91354d4925866a1b6d23ceb2eab0a960a707990b5516bb8cd"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.3.0/0x0-darwin-arm64.zip"
      sha256 "ac709d2a3d1dabe8ff3faf15d685ab0f7403700da1d496865b28e360f6b207b7"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.3.0/0x0-linux-x64.tar.gz"
      sha256 "7cd21fab8dcde91106172df620da7a39f742edefb8b91cf364f23095674c5a14"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.3.0/0x0-linux-arm64.tar.gz"
      sha256 "f5aa873140365c7b9ee665ac2d9c52efbf95f6f9e564e74b34cd554c2466df56"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
