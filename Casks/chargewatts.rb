cask "chargewatts" do
  version "1.2.4"
  sha256 "2643c6714c206745108831bb527a33d67861123bf8729590a252a53100e193af"

  url "https://github.com/alaska14/chargewatts/releases/download/v#{version}/ChargeWatts-#{version}.dmg"
  name "ChargeWatts"
  desc "Stock-looking battery menu bar icon with charger wattage on plug-in and hover"
  homepage "https://github.com/alaska14/chargewatts"

  app "ChargeWatts.app"

  uninstall quit:       "com.monolab.chargewatts",
            login_item: "ChargeWatts"

  # Restore Apple's stock battery icon after ChargeWatts is removed
  uninstall_postflight do
    system_command "/usr/bin/defaults",
                   args: ["-currentHost", "write", "com.apple.controlcenter", "Battery", "-int", "2"]
    system_command "/usr/bin/killall", args: ["ControlCenter"], must_succeed: false
  end

  zap trash: "~/Library/Preferences/com.monolab.chargewatts.plist"
end
