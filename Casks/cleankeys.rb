cask "cleankeys" do
  version "1.0.1"
  sha256 "f99b09b103ee7c8bbedfa88e78d589dbb143b3be2a5672408d67b5cb0a24b211"

  url "https://github.com/alaska14/cleankeys/releases/download/v1.0.1/CleanKeys-1.0.dmg"
  name "CleanKeys"
  desc "Fully headless macOS utility to silence volume and brightness HUD popups"
  homepage "https://monolabapps.gumroad.com/l/cleankeys"

  app "CleanKeys.app"

  zap trash: [
    "~/Library/Preferences/com.cleankeys.app.plist",
  ]
end
