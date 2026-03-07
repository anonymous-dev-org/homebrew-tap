# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.4.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.3/0x0-server-darwin-x64.zip"
      sha256 "7f649b62d795871bc33586df3bb15b0fcaf2f6cd9b766d06a08723c977fd47d6"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.3/0x0-server-darwin-arm64.zip"
      sha256 "50d3529cbb472aeb1847b3a838179df07463f3eb2d4a3df9f067c345d592e33c"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.3/0x0-server-linux-x64.tar.gz"
      sha256 "1d6dd19a39ba74b37d2996762d1343e006c0b327b5247181b13f80b6959179dc"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v2.4.3/0x0-server-linux-arm64.tar.gz"
      sha256 "59bd25f8d9d75cdad42ba7e25422b8dc8033bd1c82243e5306690eb66642e8e3"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
