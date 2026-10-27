cask "foldawake" do
  version "1.0.0"
  sha256 "9d60aa0a76303fc37e7b28536938456d8c83ae1f64115e1c69b95a49976d72f7"

  url "https://github.com/alaska14/foldawake/releases/download/v#{version}/FoldAwake-1.0.dmg"
  name "FoldAwake"
  desc "Run your MacBook with the lid closed without external displays"
  homepage "https://modolabs.gumroad.com/l/ttmmisw"

  app "FoldAwake.app"

  zap trash: [
    "~/Library/Preferences/com.foldawake.app.plist",
  ]
end
