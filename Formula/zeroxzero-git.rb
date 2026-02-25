# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.3.0/0x0-git-darwin-x64.zip"
      sha256 "76d93f65fcde8afbfdb67d9d30368418863033a62a00782c86ac4b706344bbe0"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.3.0/0x0-git-darwin-arm64.zip"
      sha256 "1f0473b5c0be73c79ec737ab2bb34bb6f71286b050d10278eaa511790d43d784"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.3.0/0x0-git-linux-x64.tar.gz"
      sha256 "0f30bc9d007dbd34ac124f3f5855187e20cc91547d7831626a01f5763fd7b9fa"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.3.0/0x0-git-linux-arm64.tar.gz"
      sha256 "e548d421f02d636cbce6b946dbeb30442513d8f66e643b4c51ddc504da85b8db"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
