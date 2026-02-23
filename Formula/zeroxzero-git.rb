# typed: false
# frozen_string_literal: true

class ZeroxzeroGit < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.0.0/0x0-git-darwin-x64.zip"
      sha256 "bfbd26dd6817df1d64e4076de263901dc518e782209760e9f9b6bf946f55b43b"

      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.0.0/0x0-git-darwin-arm64.zip"
      sha256 "3c3380cff8a0438b6e9894c6e5fb938b14607914edcc8d506e5310eac25678e2"

      def install
        bin.install "0x0-git"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.0.0/0x0-git-linux-x64.tar.gz"
      sha256 "4c3fa0a47e7dfa119454ad897d9bcc73a470eac585fab493df6c8533484a6a9c"
      def install
        bin.install "0x0-git"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-git-v1.0.0/0x0-git-linux-arm64.tar.gz"
      sha256 "698fd318e620fcf0437bb6b83b7d50b3850c54b67216fc528411a134402bc43e"
      def install
        bin.install "0x0-git"
      end
    end
  end
end
