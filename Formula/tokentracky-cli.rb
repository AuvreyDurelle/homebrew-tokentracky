# typed: strict
# frozen_string_literal: true

# CLI formula for Tokentracky on macOS Apple Silicon.
class TokentrackyCli < Formula
  desc "Local AI coding token tracker and leaderboard CLI"
  homepage "https://github.com/AuvreyDurelle/tokentracky"
  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v0.3.1/tokentracky-0.3.1-macos-arm64"
  sha256 "3c7540f969721d62dcff0a4c393d146d9f856f8d6073fda4e895f16709c5981f"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "tokentracky-0.3.1-macos-arm64" => "tokentracky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokentracky --version")
  end
end
