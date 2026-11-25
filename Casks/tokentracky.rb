# typed: strict
# frozen_string_literal: true

cask "tokentracky" do
  version "0.4.0"
  sha256 "401c1b25bb39f3920356b434a6441168833ce968b4addd4c360bf6063faf672b"

  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v#{version}/tokentracky-#{version}-macos-arm64.dmg"
  name "Tokentracky"
  desc "Local AI coding token tracker and leaderboard"
  homepage "https://github.com/AuvreyDurelle/tokentracky"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tokentracky.app"
end
