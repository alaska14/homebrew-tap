cask "foldawake" do
  version "1.1.2"
  sha256 "be99250c3f29be4f4c0ed7ebad9b771200440426ae88a95c29887f62b3f2e163"

  url "https://github.com/alaska14/foldawake/releases/download/v1.1.2/FoldAwake-1.0.dmg"
  name "FoldAwake"
  desc "Run your MacBook with the lid closed without external displays"
  homepage "https://modolabs.gumroad.com/l/ttmmisw"

  app "FoldAwake.app"

  zap trash: [
    "~/Library/Preferences/com.foldawake.app.plist",
  ]
end
