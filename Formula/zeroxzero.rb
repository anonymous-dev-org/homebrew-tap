# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "5.8.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.0/0x0-darwin-x64.zip"
      sha256 "d263d7695264cabec00b2ef6ba26f5258f88ac53f4d0b7ffb9da1197735aeb27"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.0/0x0-darwin-arm64.zip"
      sha256 "41b1a93cb53ba611ce351c4570165d771a595ba38af092da8d186c56900499fc"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.0/0x0-linux-x64.tar.gz"
      sha256 "b86e41faf68c757b19e7ad486f503ab3d676e2355964d5faed101e5b791f2b0c"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v5.8.0/0x0-linux-arm64.tar.gz"
      sha256 "42230f2fde5d8c8b755231c046cd942848a65595ecd11f24aaa1bb0e4c7cd19b"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
