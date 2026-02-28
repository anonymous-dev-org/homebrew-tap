# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "The AI coding agent daemon."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.0/0x0-server-darwin-x64.zip"
      sha256 "b5db7f0a57babaf68aa594a12db18bc038867c320ec00449d58d60d86676d361"

      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.0/0x0-server-darwin-arm64.zip"
      sha256 "640b0a958648dbde06c4fc08d2cef7ee88b63c3d7c27ccae6bb8b82799cba351"

      def install
        bin.install "0x0-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.0/0x0-server-linux-x64.tar.gz"
      sha256 "f37345c3c81923fbf0947a2eca73ce008aac55cc3eaa87ec8ede1a908a3f2201"
      def install
        bin.install "0x0-server"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/0x0-server-v1.3.0/0x0-server-linux-arm64.tar.gz"
      sha256 "982094f5dc46038e5a16507a703d7a5ac9e8d678e29ddac6b594744361cbfb99"
      def install
        bin.install "0x0-server"
      end
    end
  end
end
