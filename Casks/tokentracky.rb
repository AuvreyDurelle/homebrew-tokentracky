# typed: strict
# frozen_string_literal: true

cask "tokentracky" do
  version "0.1.2"
  sha256 "4cdbc7dbb68f854684e21963b7ec2af67dabd84e62984121d0d03fdc82ef0a73"

  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v#{version}/tokentracky-#{version}-macos-arm64.dmg"
  name "Tokentracky"
  desc "Local AI coding token tracker and leaderboard"
  homepage "https://github.com/AuvreyDurelle/tokentracky"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tokentracky.app"
end
