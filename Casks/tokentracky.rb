# typed: strict
# frozen_string_literal: true

cask "tokentracky" do
  version "0.1.1"
  sha256 "afe520ccf425feec5651c6d215b4291ab4f2d7dabe0c88675b97029a1297b375"

  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v#{version}/tokentracky-#{version}-macos-arm64.dmg"
  name "Tokentracky"
  desc "Local AI coding token tracker and leaderboard"
  homepage "https://github.com/AuvreyDurelle/tokentracky"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tokentracky.app"
end
