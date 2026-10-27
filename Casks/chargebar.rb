cask "chargebar" do
  version "1.1.1"
  sha256 "7628c7be223e6faf0e5aa79718c5b71bb1d50000b64289dee6971382b6fc0cd2"

  url "https://github.com/alaska14/chargebar/releases/download/v1.1.1/ChargeBar-1.0.dmg"
  name "ChargeBar"
  desc "Menu bar battery monitor replicating macOS Golden Gate with real-time charging wattage"
  homepage "https://modolabs.gumroad.com/l/chargebar"

  app "ChargeBar.app"

  zap trash: [
    "~/Library/Preferences/com.modolabs.chargebar.plist",
  ]
end
