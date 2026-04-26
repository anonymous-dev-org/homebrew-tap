# typed: false
# frozen_string_literal: true

class ZeroxzeroServer < Formula
  desc "0x0 execution server for AI coding agents"
  homepage "https://github.com/anonymous-dev-org/0x0"
  version "0.1.1"

  if OS.mac? && (Hardware::CPU.arm? || RUBY_PLATFORM.include?("arm64"))
    url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.1/0x0-darwin-arm64.zip"
    sha256 "f6386fb85d0b89d53c6cf0007ab7b947a300239ab8b5156d0eb0b6b96946245c"
  elsif OS.mac?
    url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.1/0x0-darwin-x64.zip"
    sha256 "a3ded03ee385fb1db99dd3cf75403edc2b0bba68345c2146bea2f15193725353"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.1/0x0-linux-arm64.tar.gz"
    sha256 "5ef1d7b0a452d62cabd635a2c47e588a53c003fda1bfb082c0d819d16eea4870"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/anonymous-dev-org/0x0/releases/download/v0.1.1/0x0-linux-x64.tar.gz"
    sha256 "1746572ae4cde8d3610d8adfed427ec9272622d283290757cd0dba50cf537691"
  end

  def install
    bin.install "0x0"
  end
end
