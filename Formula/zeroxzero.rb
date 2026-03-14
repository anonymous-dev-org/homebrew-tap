# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.5.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.1/0x0-darwin-x64.zip"
      sha256 "7e5b41df979f611470fc4c408f295af82a7985ad9886d2db75236b9ff90f4e8e"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.1/0x0-darwin-arm64.zip"
      sha256 "9a8302cc10ec890c17b6cdb9d810fe40ae937b4a65c2735e838939f828988952"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.1/0x0-linux-x64.tar.gz"
      sha256 "c522027b60130d5d211d963b5bd263e9b5eee66aaf4a5b767e46c5da7fc13d20"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.1/0x0-linux-arm64.tar.gz"
      sha256 "7b99bd8df87f3687c7bc02a2906a3e0553e7da6409c0c38017b0b75ad1f00119"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
