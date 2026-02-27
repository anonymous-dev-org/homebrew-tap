# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-darwin-x64.zip"
      sha256 "e9b55c044f29e5e85d9bfebbad9193314847d329186671ba71188a7c8d954f69"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-darwin-arm64.zip"
      sha256 "65f9bd75f3fab497d264d2bcf485e2b20bcde584383d1dcd5918447fd65be218"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-linux-x64.tar.gz"
      sha256 "5bf0b36fdadac048644643be59c19163064b4d8f256379e43366a2672407091a"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v2.2.0/0x0-git-linux-arm64.tar.gz"
      sha256 "f282d29ea6d2f4ada343a20d946de1d83f73cfbc6a949174ad7b0468d7b347fe"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
