cask "foldawake" do
  version "1.1.1"
  sha256 "a34e66b9e47e5902f2757ae283e6f3bf3a4bef10ff98a035a6a4b825cd991b3f"

  url "https://github.com/alaska14/foldawake/releases/download/v1.1.1/FoldAwake-1.0.dmg"
  name "FoldAwake"
  desc "Run your MacBook with the lid closed without external displays"
  homepage "https://modolabs.gumroad.com/l/ttmmisw"

  app "FoldAwake.app"

  zap trash: [
    "~/Library/Preferences/com.foldawake.app.plist",
  ]
end
