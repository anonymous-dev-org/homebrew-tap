# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "4.9.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.9.0/0x0-darwin-x64.zip"
      sha256 "ab3da757dc9ce10a9ccbc59366ac86bd63c5528ee53469fbee78a90ae8e6ef8c"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.9.0/0x0-darwin-arm64.zip"
      sha256 "37b8f1312b966f37d7dcf9dceca0124a581875f05ef5dab903e29561b4fca5eb"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.9.0/0x0-linux-x64.tar.gz"
      sha256 "8fe55edf6dcc09da06a23fddfbf061da47f717957e9b69cbbfeaa4b0fcc48bcc"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v4.9.0/0x0-linux-arm64.tar.gz"
      sha256 "36c36d2d5377e94ec713162e21d35f82a4acc9485b16077c246d72d3d101368a"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
