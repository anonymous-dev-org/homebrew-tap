# typed: false
# frozen_string_literal: true

class Dbtui < Formula
  desc "Terminal database management interface with AI-assisted query building"
  homepage "https://github.com/anonymous-dev-org/dbtui"
  url "https://github.com/anonymous-dev-org/dbtui/archive/refs/tags/v0.4.4.tar.gz"
  sha256 "6be1c342b3a28327be21bdba4a0caf6f12f080e5a94af8358b6875b0da146821"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtui --version")
  end
end
