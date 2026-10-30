cask "cleankeys" do
  version "1.0.2"
  sha256 "35b36f6687c686bfb79f933c308002a77658bd04be09841bb5c8a8a0020bd683"

  url "https://github.com/alaska14/cleankeys/releases/download/v#{version}/CleanKeys-#{version}.dmg"
  name "CleanKeys"
  desc "Fully headless utility to silence volume and brightness HUD popups"
  homepage "https://monolabapps.gumroad.com/l/cleankeys"

  app "CleanKeys.app"

  uninstall quit:       "com.monolab.cleankeys",
            login_item: "CleanKeys"

  zap trash: [
    "~/Library/Preferences/com.local.NoHUD.plist",
    "~/Library/Preferences/com.monolab.cleankeys.plist",
  ]
end
