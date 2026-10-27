# typed: strict
# frozen_string_literal: true

# CLI formula for Tokentracky on macOS Apple Silicon.
class Tokentracky < Formula
  desc "Local AI coding token tracker and leaderboard CLI"
  homepage "https://github.com/AuvreyDurelle/tokentracky"
  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v0.1.0/tokentracky-0.1.0-macos-arm64"
  sha256 "d948406c8e6baf8b3809639cc1ec556451d1e0bc528fce6f5a8c812c9d320ac6"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  def install
    bin.install "tokentracky-0.1.0-macos-arm64" => "tokentracky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokentracky --version")
  end
end
