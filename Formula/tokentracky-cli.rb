# typed: strict
# frozen_string_literal: true

# CLI formula for Tokentracky on macOS Apple Silicon.
class TokentrackyCli < Formula
  desc "Local AI coding token tracker and leaderboard CLI"
  homepage "https://github.com/AuvreyDurelle/tokentracky"
  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v0.2.1/tokentracky-0.2.1-macos-arm64"
  sha256 "bad7a1fa9b20ce37cda55c0a4042b168162f85a37c0c06c5c2dca53fa608a3fb"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "tokentracky-0.2.1-macos-arm64" => "tokentracky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokentracky --version")
  end
end
