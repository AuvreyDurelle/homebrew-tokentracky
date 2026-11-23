# typed: strict
# frozen_string_literal: true

# CLI formula for Tokentracky on macOS Apple Silicon.
class TokentrackyCli < Formula
  desc "Local AI coding token tracker and leaderboard CLI"
  homepage "https://github.com/AuvreyDurelle/tokentracky"
  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v0.3.3/tokentracky-0.3.3-macos-arm64"
  sha256 "990eb4c19795a4c06238b98c33f16a5c330c579361b2e88b428d2cc9548230b8"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "tokentracky-0.3.3-macos-arm64" => "tokentracky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokentracky --version")
  end
end
