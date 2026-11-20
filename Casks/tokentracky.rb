# typed: strict
# frozen_string_literal: true

cask "tokentracky" do
  version "0.3.0"
  sha256 "d4e517f18a28acd4c13ecc05cdd175fde67abda3560606e3bd735f335eb7c4e5"

  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v#{version}/tokentracky-#{version}-macos-arm64.dmg"
  name "Tokentracky"
  desc "Local AI coding token tracker and leaderboard"
  homepage "https://github.com/AuvreyDurelle/tokentracky"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tokentracky.app"
end
