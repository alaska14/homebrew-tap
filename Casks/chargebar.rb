cask "chargebar" do
  version "1.1.5"
  sha256 "2b258199d5402b99f2deb58f6fe97e79623cc62a7ddb3c190f4d7bc3f382fa2b"

  url "https://github.com/alaska14/chargebar/releases/download/v1.1.5/ChargeBar-1.0.dmg"
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
