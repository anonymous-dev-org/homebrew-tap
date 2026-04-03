# typed: false
# frozen_string_literal: true

class ZeroxzeroTui < Formula
  desc "AI coding agent TUI — cross-provider terminal interface"
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "7.0.0"

  depends_on "anonymous-dev-org/tap/zeroxzero-server"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-tui-darwin-arm64.zip"
      sha256 "4d301a557abbff13a499119d9a55b60d0ffe1a92c88e3d1406cd49ae4b7e8751"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-tui-darwin-x64.zip"
      sha256 "1b5a7d29b8797d7f67883d32293572bd9712baa82000b1ccd8f55090ed914535"
    end
  end

  on_linux do
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-tui-linux-arm64.tar.gz"
      sha256 "f2d5a781e5de060a00650f57fa91f1a94c220dd342ddeabaec05a0de98c7c93e"
    end
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v7.0.0/0x0-tui-linux-x64.tar.gz"
      sha256 "7942bccca2d8bac612f22b57d1c34efd1002eb77fe9b6789465f9ab853248898"
    end
  end

  def install
    bin.install "0x0-tui"
  end
end
