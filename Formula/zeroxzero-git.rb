# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-darwin-x64.zip"
      sha256 "018ac80d44b3b22fb9a54ecd2c3139f3c6bb087c64630bba123fdcd2ffa4364f"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-darwin-arm64.zip"
      sha256 "9433fcddd3d3365426eb998a6b80fe7150736e9caf256ebef1bd9150bf64a816"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-linux-x64.tar.gz"
      sha256 "6ed5b671fbb818e69266b59b7a35f4b20297720530e8ac46b97000c2365da828"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v0.2.0/0x0-git-linux-arm64.tar.gz"
      sha256 "e986ef6d2cabb0f330dbe942adaad73683fc33188af0483122ceb08daf1018fa"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
