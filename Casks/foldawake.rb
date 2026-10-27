cask "foldawake" do
  version "1.1.3"
  sha256 "f03d59c7c99be591a2f68f96e2dcfe46d48715475b3194e753dbf5f54056dc1b"

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
