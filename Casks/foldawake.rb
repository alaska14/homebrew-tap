cask "foldawake" do
  version "1.1.3"
  sha256 "eb58736634a8c484141b2d1d133a8a2134733ee4d8b36b818bcac5aadff1a355"

  url "https://github.com/alaska14/foldawake/releases/download/v1.1.3/FoldAwake-1.0.dmg"
  name "FoldAwake"
  desc "Run your MacBook with the lid closed with auto-dimming & Thermal Guardian"
  homepage "https://modolabs.gumroad.com/l/ttmmisw"

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
