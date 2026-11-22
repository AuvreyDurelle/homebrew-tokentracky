# typed: strict
# frozen_string_literal: true

cask "tokentracky" do
  version "0.3.2"
  sha256 "42a2789856de310bf99af49107be53c80a6b9ba5ac0a4502417fdfbcdc1d1713"

  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v#{version}/tokentracky-#{version}-macos-arm64.dmg"
  name "Tokentracky"
  desc "Local AI coding token tracker and leaderboard"
  homepage "https://github.com/AuvreyDurelle/tokentracky"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tokentracky.app"
end
