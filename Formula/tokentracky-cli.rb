# typed: strict
# frozen_string_literal: true

# CLI formula for Tokentracky on macOS Apple Silicon.
class TokentrackyCli < Formula
  desc "Local AI coding token tracker and leaderboard CLI"
  homepage "https://github.com/AuvreyDurelle/tokentracky"
  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v0.1.1/tokentracky-0.1.1-macos-arm64"
  sha256 "14411d54b4bc6b5d2482b682c1e612587c4d6ea7a55519fe6c3da374fd30f3d2"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "tokentracky-0.1.1-macos-arm64" => "tokentracky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokentracky --version")
  end
end
