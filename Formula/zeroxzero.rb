# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.1.0/0x0-darwin-x64.zip"
      sha256 "dca36bd03a93aa86855bd28eb5c7bbad7f3cfd179f28c0bcdd01608aa8a0cccf"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.1.0/0x0-darwin-arm64.zip"
      sha256 "4be08e2d2e4442b65079b5f753c3e88f9e2f9f5e0639630218fa6efecdd6c412"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.1.0/0x0-linux-x64.tar.gz"
      sha256 "40a11406be9909773e8390628cdac8b15ba1f02c9fd9ac6229b62dcdf469468f"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.1.0/0x0-linux-arm64.tar.gz"
      sha256 "e51edae71cc2f691f895186213908bb115d31aa6564ff8b80958a4ae0612c551"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
