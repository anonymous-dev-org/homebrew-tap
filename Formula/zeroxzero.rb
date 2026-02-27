# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.4.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.4.0/0x0-darwin-x64.zip"
      sha256 "7bcf764efd9ae11790aa98c6bbd7afa576be3d8bb21e2bd1fe4b2b0a2f73610f"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.4.0/0x0-darwin-arm64.zip"
      sha256 "0e8f8b816b88e03670ce113a4a920e15020572eed26b03614edbeab545bd9f75"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.4.0/0x0-linux-x64.tar.gz"
      sha256 "c285673f464960bc245abb3bdc56f5176a5d187eaabc9caa8293ba7d1a5e34d1"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.4.0/0x0-linux-arm64.tar.gz"
      sha256 "ce283e18cc1ec50ddfcdad915e1945088da1b53adb8b6f85320d27778ff5f63c"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
