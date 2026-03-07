# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.2.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.2/0x0-darwin-x64.zip"
      sha256 "7f2b8259374554ddf9fd56344bd5d94cbad35e6e2cf915bac767f23731ff90e5"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.2/0x0-darwin-arm64.zip"
      sha256 "e5133633ef1d67b8f4101867de983f21dcb5e6f0d7916acb37171d6791322592"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.2/0x0-linux-x64.tar.gz"
      sha256 "db1675357735d0a6df77497e7894292050ae945469a924d14469c21c39bbea57"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.2.2/0x0-linux-arm64.tar.gz"
      sha256 "ef70ba724bcac27fd4495788497d1ff09b5ee7940a209ae0147549d93afd3405"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
