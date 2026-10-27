cask "chargebar" do
  version "1.1.7"
  sha256 "3a729530a3af719282821373b0085830f7589367574e1b180f28612fcb88a9d5"

  url "https://github.com/alaska14/chargebar/releases/download/v1.1.7/ChargeBar-1.0.dmg"
  name "ChargeBar"
  desc "Invisible 1:1 drop-in replacement for macOS battery with real-time charging wattage"
  homepage "https://modolabs.gumroad.com/l/chargebar"

  app "ChargeBar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ChargeBar.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.modolabs.chargebar.plist",
  ]
end
