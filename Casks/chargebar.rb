cask "chargebar" do
  version "1.0.0"
  sha256 "fee41799caeadea258c5c5d3cccf22e03816fd96529be14dc31e5fc74fab6b90"

  url "https://github.com/alaska14/chargebar/releases/download/v1.0.0/ChargeBar-1.0.dmg"
  name "ChargeBar"
  desc "Menu bar battery monitor with real-time charging wattage and telemetry"
  homepage "https://modolabs.gumroad.com"

  app "ChargeBar.app"

  zap trash: [
    "~/Library/Preferences/com.modolabs.chargebar.plist",
  ]
end
