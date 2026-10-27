# typed: strict
# frozen_string_literal: true

cask "tokentracky" do
  version "0.1.0"
  sha256 "1c50688f053ede61ea0039227e198af22e0b8088a3ae4a7de96eee78a7243851"

  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v#{version}/tokentracky-#{version}-macos-arm64.dmg"
  name "Tokentracky"
  desc "Local AI coding token tracker and leaderboard"
  homepage "https://github.com/AuvreyDurelle/tokentracky"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tokentracky.app"
end
