# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.5.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.2/0x0-darwin-x64.zip"
      sha256 "ab01564cefba0c8254ed25c56f0628936e8cc3595a02cc5edff898064464a81f"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.2/0x0-darwin-arm64.zip"
      sha256 "34d8949a3def3131780925335adb2eaf8128cc29c8fb6f5639ce46df5b641491"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.2/0x0-linux-x64.tar.gz"
      sha256 "0d67778ce7459706a8ad9802d391a60146357dcf95dfa57d916a142037ff2037"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.5.2/0x0-linux-arm64.tar.gz"
      sha256 "9e6cb6be53f3e22fa5895d9856751644ef23daeeed56dfae675a52b79cd97c49"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
