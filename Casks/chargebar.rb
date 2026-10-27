cask "chargebar" do
  version "1.1.5"
  sha256 "6e4059ad3a92e45f18d691d695eaccacb3918a344ea8c0c85f046664242c43eb"

  url "https://github.com/alaska14/chargebar/releases/download/v1.1.5/ChargeBar-1.0.dmg"
  name "ChargeBar"
  desc "Invisible 1:1 drop-in replacement for macOS battery with real-time charging wattage"
  homepage "https://modolabs.gumroad.com/l/chargebar"

  app "ChargeBar.app"

  zap trash: [
    "~/Library/Preferences/com.modolabs.chargebar.plist",
  ]
end
