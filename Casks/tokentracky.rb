# typed: strict
# frozen_string_literal: true

cask "tokentracky" do
  version "0.3.1"
  sha256 "91a74c71503f08661eae6b21d0b0b00125623810f1009a3953e013ed979c43ed"

  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v#{version}/tokentracky-#{version}-macos-arm64.dmg"
  name "Tokentracky"
  desc "Local AI coding token tracker and leaderboard"
  homepage "https://github.com/AuvreyDurelle/tokentracky"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tokentracky.app"
end
