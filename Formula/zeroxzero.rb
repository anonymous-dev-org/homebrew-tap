# typed: false
# frozen_string_literal: true

class Zeroxzero < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "2.0.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.2/0x0-darwin-x64.zip"
      sha256 "34dbfec1c487f06dac6ce05616015461843421a40ab9dc1e146713983263f8d8"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.2/0x0-darwin-arm64.zip"
      sha256 "48193a815923be14fd05b6686349e72d4b3bac0ea119ae9b2aa3b9773610e1ca"

      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.2/0x0-linux-x64.tar.gz"
      sha256 "a6fc7c11093f3ca64a79b1fc5009dae61398be67d673e8221fafd21de8ffe959"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anonymous-dev-org/0x0/releases/download/v2.0.2/0x0-linux-arm64.tar.gz"
      sha256 "8116bb026586328704e21e9b015f403cb7c6b616d95afaf7a1ab547893f96108"
      def install
        bin.install "zeroxzero" => "0x0"
      end
    end
  end
end
