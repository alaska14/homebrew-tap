cask "foldawake" do
  version "1.1.1"
  sha256 "1bd6f0be8befce14a8b3370ae88b4708a1b2a5116af6b8aaea58126db9fbbaa2"

  url "https://github.com/alaska14/foldawake/releases/download/v1.1.1/FoldAwake-1.0.dmg"
  name "FoldAwake"
  desc "Run your MacBook with the lid closed without external displays"
  homepage "https://modolabs.gumroad.com/l/ttmmisw"

  app "FoldAwake.app"

  zap trash: [
    "~/Library/Preferences/com.foldawake.app.plist",
  ]
end
