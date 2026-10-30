cask "chargewatts" do
  version "1.2.4"
  sha256 "444a2756afcaca0da75b92fe565fdb39b63adfddbd9359a0edf0fa304d674777"

  url "https://github.com/alaska14/chargewatts/releases/download/v#{version}/ChargeWatts-#{version}.dmg"
  name "ChargeWatts"
  desc "Stock-looking battery menu bar icon with charger wattage on plug-in and hover"
  homepage "https://github.com/alaska14/chargewatts"

  app "ChargeWatts.app"

  uninstall quit:       "com.monolab.chargewatts",
            login_item: "ChargeWatts"

  # Quitting ChargeWatts already restores Apple's stock battery icon; this is a safety net
  # in case the app was not running at uninstall time.
  uninstall_postflight_steps do
    run "/usr/bin/defaults",
        args:         ["-currentHost", "write", "com.apple.controlcenter", "Battery", "-int", "2"],
        must_succeed: false
    run "/usr/bin/killall", args: ["ControlCenter"], must_succeed: false
  end

  zap trash: "~/Library/Preferences/com.monolab.chargewatts.plist"
end
