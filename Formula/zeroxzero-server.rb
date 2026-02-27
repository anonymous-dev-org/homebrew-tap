# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.1.2/0x0-server-darwin-x64.zip"
      sha256 "24da9fc8221c930b49dabbcdba85877bf2875ee9dc510d6620ddbec94bdbcf9a"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.1.2/0x0-server-darwin-arm64.zip"
      sha256 "d6d46740e930418e94c13ff7dd207fa4357f6e16b8f5b73ad7d9bba8bea19ab1"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.1.2/0x0-server-linux-x64.tar.gz"
      sha256 "c2fecc3499a0c951fd41493810b01eac98982792da187073821af60e126a5a08"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.1.2/0x0-server-linux-arm64.tar.gz"
      sha256 "caa461b6efd24ae02028338191c5ab2b134a1a4fbc582f9bfa5dc15a699925a4"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
