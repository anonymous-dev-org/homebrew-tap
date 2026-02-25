# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "4.5.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.5.0/0x0-darwin-x64.zip"
      sha256 "defe0bd44f4affa602152d96a189e725c51764bdef0afa99b81259320e9eb740"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.5.0/0x0-darwin-arm64.zip"
      sha256 "6bee535717f8aca77f28a903368dfc1d15b980da84caae02af648de5a46741d9"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.5.0/0x0-linux-x64.tar.gz"
      sha256 "047f47657b650bd5d52fb7acc5b81eac063bbd54e671ad015cdfa7423463c6af"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.5.0/0x0-linux-arm64.tar.gz"
      sha256 "437c05a822fc6b2afe188e15f2e35a54b40dda5d29d4b9b64d4c188e0284c597"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
