cask "ruensync" do
  version "1.1.0"
  sha256 "ec74435d27b0e14c38540f2fbbf26c90efa0e0180a96ed99a878da462174ad95"

  url "https://github.com/alexey1312/ruen-sync-mac/releases/download/v#{version}/RuEnSync.dmg"
  name "RuEnSync"
  desc "Menubar app that keeps a QMK keyboard's cur_lang in sync with the macOS input source"
  homepage "https://github.com/alexey1312/ruen-sync-mac"

  app "RuEnSync.app"

  zap trash: [
    "~/.config/RuEnSync",
    "~/Library/Application Scripts/com.alexey1312.ruensync",
    "~/Library/Containers/com.alexey1312.ruensync",
  ]
end
