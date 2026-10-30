cask "cleankeys" do
  version "1.0.2"
  sha256 "b98f3b598b76039ece2def6af42f154343b28fec3daa9ab4b04c41136d9c940e"

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
