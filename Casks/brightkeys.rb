cask "brightkeys" do
  version "1.0.1"
  sha256 "541c798a67c6929f5f747a4d62775700b41f6f9827a9dfeef6c626bee1948784"

  url "https://github.com/alaska14/brightkeys/releases/download/v#{version}/BrightKeys-#{version}.dmg"
  name "BrightKeys"
  desc "Silent background utility restoring F5/F6 keyboard backlight controls"
  homepage "https://github.com/alaska14/brightkeys"

  app "BrightKeys.app"

  uninstall early_script: {
              executable: "#{appdir}/BrightKeys.app/Contents/MacOS/BrightKeys",
              args:       ["--remove-mapping"],
            },
            quit:         "com.monolab.brightkeys",
            login_item:   "BrightKeys",
            delete:       "~/Library/LaunchAgents/com.monolab.brightkeys.plist"

  zap trash: "~/Library/Preferences/com.monolab.brightkeys.plist"
end
