cask "foldawake" do
  version "1.2.0"
  sha256 "ec5dc780b2ec3038655de3473ea161c416fc346776ebbb35cf9be30b618deeae"

  url "https://github.com/alaska14/foldawake/releases/download/v#{version}/FoldAwake-#{version}.dmg"
  name "FoldAwake"
  desc "Run your MacBook with the lid closed with auto-dimming & Thermal Guardian"
  homepage "https://monolabapps.gumroad.com/l/foldawake"

  app "FoldAwake.app"

  # The app is ad-hoc signed (not notarized); remove the quarantine flag so it can launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/FoldAwake.app"], must_succeed: false
  end

  # Quitting FoldAwake restores normal lid sleep (pmset disablesleep 0).
  uninstall quit:       "com.foldawake.app",
            login_item: "FoldAwake"

  zap trash:  "~/Library/Preferences/com.foldawake.app.plist",
      delete: "/etc/sudoers.d/foldawake_powerprotect"
end
