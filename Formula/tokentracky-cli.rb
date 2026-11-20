# typed: strict
# frozen_string_literal: true

# CLI formula for Tokentracky on macOS Apple Silicon.
class TokentrackyCli < Formula
  desc "Local AI coding token tracker and leaderboard CLI"
  homepage "https://github.com/AuvreyDurelle/tokentracky"
  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v0.3.0/tokentracky-0.3.0-macos-arm64"
  sha256 "8311839c6bc8abec6798addee5fd4dbea04562878aaafb50a38b964e31f71042"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "tokentracky-0.3.0-macos-arm64" => "tokentracky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokentracky --version")
  end
end
