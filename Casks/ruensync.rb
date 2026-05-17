cask "ruensync" do
  version "1.3.1"
  sha256 "4823a2f4a033e40af1b9784dd1536100131a3e20c5694622ccd36f211a351881"

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
