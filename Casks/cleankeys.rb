cask "cleankeys" do
  version "1.0"
  sha256 "713e2b3845442de334aebf674c7e9597a3df957d1c733852e1ff9e2589edd3fb"

  url "https://github.com/alaska14/cleankeys/releases/download/v1.0.0/CleanKeys-1.0.dmg"
  name "CleanKeys"
  desc "Fully headless macOS utility to silence volume and brightness HUD popups"
  homepage "https://modolabs.gumroad.com/l/fkwin"

  app "CleanKeys.app"

  zap trash: [
    "~/Library/Preferences/com.cleankeys.app.plist",
  ]
end
