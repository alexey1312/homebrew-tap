cask "ruensync" do
  version "1.2.0"
  sha256 "8f5e3ec1105f8bf53b54bb77a90fc66fdfc3b68d56e4211cc1289c21e3fc1efb"

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
