cask "chargebar" do
  version "1.1.4"
  sha256 "7aded24c814a380a4348a58859420af88568c91a9832e56461cb42f2b42e857d"

  url "https://github.com/alaska14/chargebar/releases/download/v1.1.4/ChargeBar-1.0.dmg"
  name "ChargeBar"
  desc "Invisible 1:1 drop-in replacement for macOS battery with real-time charging wattage"
  homepage "https://modolabs.gumroad.com/l/chargebar"

  app "ChargeBar.app"

  zap trash: [
    "~/Library/Preferences/com.modolabs.chargebar.plist",
  ]
end
