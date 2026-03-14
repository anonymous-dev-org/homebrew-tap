# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.8.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.1/0x0-server-darwin-x64.zip"
      sha256 "51973ef69dd4fed0885e58d60b42b53e4bfe5ce47a9b419f674316cf8bd99689"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.1/0x0-server-darwin-arm64.zip"
      sha256 "15a03a01f69a206ccabeba4d11e2f776e66b83e7bdef1498fa7473407a9f3b24"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.1/0x0-server-linux-x64.tar.gz"
      sha256 "8fac38d2402365ae24ab83aa48b4945336f8506681c9f27514377d0475605fc3"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.8.1/0x0-server-linux-arm64.tar.gz"
      sha256 "945ce24ef0432f4a0459e61488b4a8130dab04a16122e33474f42f8078cf740b"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
