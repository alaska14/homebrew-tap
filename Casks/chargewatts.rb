cask "chargewatts" do
  version "1.2.0"
  sha256 "db295272365ad8dff766aaf4244b709e0dc6fae681f910b855a37ae24c8ab467"

  url "https://github.com/alaska14/chargewatts/releases/download/v1.2.0/ChargeWatts-1.0.dmg"
  name "ChargeWatts"
  desc "1:1 pixel-perfect Apple battery replacement that shows live wattage on hover & plug-in"
  homepage "https://monolab.gumroad.com/l/chargewatts"

  app "ChargeWatts.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ChargeWatts.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.monolab.chargewatts.plist",
  ]
end
