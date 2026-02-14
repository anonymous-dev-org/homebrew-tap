# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.10.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.10.0/0x0-darwin-x64.zip"
      sha256 "586cea6b38339c5351e0569378724e6c72094a0544762ab15f6f71bb4546524f"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.10.0/0x0-darwin-arm64.zip"
      sha256 "1c5ca24b2b09afdfada053f834289bff8efcaee6b7666e59c916855ae7e779ab"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.10.0/0x0-linux-x64.tar.gz"
      sha256 "b3b71ab95bc299a8700913a461f06245ccc295a078b9150238e07d392fdc9c28"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v1.10.0/0x0-linux-arm64.tar.gz"
      sha256 "c0f54666aadd0bf075e3641d4b202281d23bcd5402a6597b2ae3b56f5bc4dd41"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
