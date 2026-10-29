# typed: strict
# frozen_string_literal: true

cask "tokentracky" do
  version "0.2.1"
  sha256 "524a88b5d13aa74051e8ae783660e831d5a691faf8d387ee9cba7417a6d8649c"

  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v#{version}/tokentracky-#{version}-macos-arm64.dmg"
  name "Tokentracky"
  desc "Local AI coding token tracker and leaderboard"
  homepage "https://github.com/AuvreyDurelle/tokentracky"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tokentracky.app"
end
