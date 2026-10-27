cask "chargebar" do
  version "1.1.6"
  sha256 "94b7acccf126d1ef1685a5342fe96a9d02ef0e9cd13b2460b5ab0a17b3bc3755"

  url "https://github.com/alaska14/chargebar/releases/download/v1.1.6/ChargeBar-1.0.dmg"
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
