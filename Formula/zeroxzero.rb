# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "6.1.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.1.1/0x0-darwin-x64.zip"
      sha256 "15805b8f83ec7d4fbd5d5b70624c3f4a2f84929fa5767cc6ff733cf3db024083"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.1.1/0x0-darwin-arm64.zip"
      sha256 "e595c443988469bed120d6ec57e14baceeec32c89d3231ebb7ad3e5f083e76f8"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.1.1/0x0-linux-x64.tar.gz"
      sha256 "0312c922721607688b8ddf45aba100b6780e9eda071bb71f8fddc736734065e0"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v6.1.1/0x0-linux-arm64.tar.gz"
      sha256 "22dc2ba2fa19a6f09bac87f75759763cfc8520bd6f7aa15ec9493641c3df47f9"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
