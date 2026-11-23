# typed: strict
# frozen_string_literal: true

cask "tokentracky" do
  version "0.3.3"
  sha256 "a93302e07ec2866cfdd734501a84846f96e31d8cd29e4c4fab5bbb8e97c0b675"

  url "https://github.com/AuvreyDurelle/tokentracky/releases/download/v#{version}/tokentracky-#{version}-macos-arm64.dmg"
  name "Tokentracky"
  desc "Local AI coding token tracker and leaderboard"
  homepage "https://github.com/AuvreyDurelle/tokentracky"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tokentracky.app"
end
