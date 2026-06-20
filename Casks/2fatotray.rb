cask "2fatotray" do
  version "1.4.8.1"
  sha256 "cdce86a5774a34f75dc97dfa870fe5e673f232c4c9ec7ddc49a0b5619976150e"

  url "https://github.com/DaFuqtor/2FAtoTray/releases/download/#{version}/2FAtoTray.zip"
  name "2FA to Tray"
  desc "Copy 2FA tokens from the menu bar in a click"
  homepage "https://github.com/DaFuqtor/2FAtoTray"

  deprecate! date: "2021-07-27", because: :discontinued

  depends_on :macos

  app "2FA to Tray.app"

  uninstall login_item: "2FA to Tray"

  zap trash: "~/Library/Preferences/com.dafuqtor.2FAtoTray.plist"

  caveats do
    requires_rosetta
  end
end
