cask "chargebar" do
  version "1.1.0"
  sha256 "1b675d0db59a16d5f710f26465496ce3a816285aa51fa41ed3675ff7f0455fc1"

  url "https://github.com/alaska14/chargebar/releases/download/v1.1.0/ChargeBar-1.0.dmg"
  name "ChargeBar"
  desc "Menu bar battery monitor with real-time charging wattage and telemetry"
  homepage "https://modolabs.gumroad.com/l/chargebar"

  app "ChargeBar.app"

  zap trash: [
    "~/Library/Preferences/com.modolabs.chargebar.plist",
  ]
end
