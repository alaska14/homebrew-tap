cask "foldawake" do
  version "1.1.0"
  sha256 "e5b0130cbd515042a4bed5b89ac7b6f3f1483b7050898097d5c4276438bbce48"

  url "https://github.com/alaska14/foldawake/releases/download/v#{version}/FoldAwake-1.0.dmg"
  name "FoldAwake"
  desc "Run your MacBook with the lid closed with auto-dimming display & keyboard"
  homepage "https://modolabs.gumroad.com/l/ttmmisw"

  app "FoldAwake.app"

  zap trash: [
    "~/Library/Preferences/com.foldawake.app.plist",
  ]
end
