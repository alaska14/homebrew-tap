cask "foldawake" do
  version "1.1.4"
  sha256 "a12c413aa12cdb70bbfab90fafb374844b4e1eb84b43b0a856fac73e7ae57ad2"

  url "https://github.com/alaska14/foldawake/releases/download/v1.1.4/FoldAwake-1.0.dmg"
  name "FoldAwake"
  desc "Run your MacBook with the lid closed with auto-dimming & Thermal Guardian"
  homepage "https://modolabs.gumroad.com/l/foldawake"

  app "FoldAwake.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/FoldAwake.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.foldawake.app.plist",
  ]
end
