cask "brightkeys" do
  version "1.0.0"
  sha256 "cb6f631dbce7144ebb3988f1f697770af0605465fe3329cd8d8ac3c02d4491b8"

  url "https://github.com/alaska14/brightkeys/releases/download/v#{version}/BrightKeys.dmg"
  name "BrightKeys"
  desc "Restore dedicated keyboard backlight control to F5 and F6 keys on Apple Silicon"
  homepage "https://monolab-apps.gumroad.com"

  depends_on macos: ">= :monterey"

  app "BrightKeys.app"

  zap trash: [
    "~/Library/Preferences/com.monolab.brightkeys.plist",
    "~/Library/LaunchAgents/com.monolab.brightkeys.plist",
  ]
end
