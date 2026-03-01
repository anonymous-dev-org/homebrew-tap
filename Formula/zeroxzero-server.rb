# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.4/0x0-server-darwin-x64.zip"
      sha256 "b5d076bf652f5880abdfb724a717c2d080b46d95561c25e41ec8d0beaec37f62"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.4/0x0-server-darwin-arm64.zip"
      sha256 "e8839ad36ca2971fa7927d512ad600e474e915a5f8002b2b154bfbcea1f319a3"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.4/0x0-server-linux-x64.tar.gz"
      sha256 "47ee109fe4fde834630e3843b6e0c40f7894dbed672b8573912df76573947d7a"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.4/0x0-server-linux-arm64.tar.gz"
      sha256 "25f18d73631f1e04898ae3165c7871b2b2fa0c10a2dbdd67110546dc32d1a347"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
