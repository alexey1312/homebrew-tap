cask "ruensync" do
  version "1.4.6"
  sha256 "7b6c28686381fb5195eff9b7c8b41b290662c9cd9265cf93fef282bdd63458f6"

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
