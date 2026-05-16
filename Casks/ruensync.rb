cask "ruensync" do
  version "1.0.0"
  sha256 "d61c959b0ef2a72a43a9d62d82b5ee5a7721d6c0f550dd6ce595e889c12f1c38"

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
