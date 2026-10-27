cask "chargebar" do
  version "1.1.2"
  sha256 "8fd7fca21ee634bde6f718fdf971e9c63ccc1eb7ac25715d448f54384b4df09c"

  url "https://github.com/alaska14/chargebar/releases/download/v1.1.2/ChargeBar-1.0.dmg"
  name "ChargeBar"
  desc "Invisible 1:1 drop-in replacement for macOS battery with real-time charging wattage"
  homepage "https://modolabs.gumroad.com/l/chargebar"

  app "ChargeBar.app"

  zap trash: [
    "~/Library/Preferences/com.modolabs.chargebar.plist",
  ]
end
