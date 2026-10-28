cask "brightkeys" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/alaska14/brightkeys/releases/download/v1.0.0/BrightKeys-1.0.dmg"
  name "bright keys."
  desc "Silent background utility restoring hardware F5/F6 keyboard backlight controls"
  homepage "https://github.com/alaska14/brightkeys"

  app "BrightKeys.app"

  uninstall quit: "com.monolab.brightkeys"

  zap trash: [
    "~/Library/Preferences/com.monolab.brightkeys.plist",
    "~/Library/LaunchAgents/com.monolab.brightkeys.plist",
  ]
end
