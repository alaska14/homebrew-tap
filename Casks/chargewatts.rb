cask "chargewatts" do
  version "1.2.2"
  sha256 :no_check

  url "https://github.com/alaska14/chargewatts/releases/download/v1.2.2/ChargeWatts.dmg"
  name "ChargeWatts"
  desc "1:1 pixel-perfect Apple battery replacement with live wattage and zero duplicate icons"
  homepage "https://github.com/alaska14/chargewatts"

  app "ChargeWatts.app"

  uninstall quit: "com.monolab.chargewatts",
            postflight: -> {
              system_command "/usr/bin/defaults",
                             args: ["-currentHost", "write", "com.apple.controlcenter", "Battery", "-int", "2"]
              system_command "/usr/bin/killall", args: ["ControlCenter"]
            }

  zap trash: [
    "~/Library/Preferences/com.monolab.chargewatts.plist",
  ]
end
