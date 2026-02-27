# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.3.0/0x0-darwin-x64.zip"
      sha256 "6aaa1ee87a6b5a3437db58731f55e3c2560812984024bda1a5436db258e56cf2"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.3.0/0x0-darwin-arm64.zip"
      sha256 "52388860bdd66d3db923ddb1fc903c3d2d19e36c740a8781d52b90ea231f5629"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.3.0/0x0-linux-x64.tar.gz"
      sha256 "ffc491ec4d981719fb822784ae825f2803398cbcb9153ee7b89cf13f490102a4"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.3.0/0x0-linux-arm64.tar.gz"
      sha256 "3ecf8ebac45e2b78c0e796d1257becf1417d923700419eda015cd583dcfa55cc"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
