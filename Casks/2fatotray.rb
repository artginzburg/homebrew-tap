cask '2fatotray' do
  version '1.0'
  sha256 'fa88a09f0badf65be932461f8fd7567b9e5e76b027bd592476600f4c80ea7b33'

  url "https://github.com/DaFuqtor/2FAtoTray/releases/download/#{version}/2FAtoTray.zip"
  appcast 'https://github.com/DaFuqtor/2FAtoTray/releases.atom'
  name '2FAtoTray'
  homepage 'https://github.com/DaFuqtor/2FAtoTray'

  app '2FA to Tray.app'

  uninstall login_item: '2FA to Tray'

  zap trash: '~/Library/Preferences/com.dafuqtor.2FAtoTray.plist'
end
