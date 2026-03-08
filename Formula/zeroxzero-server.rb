# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.6.1/0x0-server-darwin-x64.zip"
      sha256 "3ccb967149159dc473ad266b4ef6f7d775d97c61730f6c4b2038ba0935c5046e"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.6.1/0x0-server-darwin-arm64.zip"
      sha256 "929ebbcaa83eaf9b3861839957ac6b36acd633be62857f815256eda2d43ce51a"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.6.1/0x0-server-linux-x64.tar.gz"
      sha256 "0ebfecdb83e305b96154de00b60981a6c7a24190916c46599dbdcecf48227cf5"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.6.1/0x0-server-linux-arm64.tar.gz"
      sha256 "54ed0d81e2227b995b21f1032fb164290798d08fc8637502de65fad532f191d8"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
