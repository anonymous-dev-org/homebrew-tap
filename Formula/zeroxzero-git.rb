# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "3.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v3.0.0/0x0-git-darwin-x64.zip"
      sha256 "39e7ce3a518e1914a4cb817c177067eaed6a6ab782c9ff4ebe433b6d34b2fb16"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v3.0.0/0x0-git-darwin-arm64.zip"
      sha256 "e30467cf43a9b3e78b127d98a1d51f04eb191e9615777ead3ba1ffa45475214d"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v3.0.0/0x0-git-linux-x64.tar.gz"
      sha256 "56255615ec8a021dd4460922d831aaa7e17d6255caec6a36bfddabae0ffbc6ad"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v3.0.0/0x0-git-linux-arm64.tar.gz"
      sha256 "4b138c4409bc2afe6f9274143d30b6c477c00bad9db6fec5422f23e67887ce57"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
