# typed: false
# frozen_string_literal: true

class Dbtui < Formula
  desc "Terminal database management interface with AI-assisted query building"
  homepage "https://github.com/anonymous-dev-org/dbtui"
  url "https://github.com/anonymous-dev-org/dbtui/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "0e097ea8b6b69d4673efcc84d852c21ea15892bd2a1655fb8b1a305351e01b0b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtui --version")
  end
end
