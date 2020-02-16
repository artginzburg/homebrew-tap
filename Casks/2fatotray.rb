cask '2fatotray' do
  version '1.3.1'
  sha256 '9cf3c4f2ade7b72e60d106518f02b94ca20b21814d865f4f4a9846e8b1dde01a'

  url "https://github.com/DaFuqtor/2FAtoTray/releases/download/#{version}/2FAtoTray.zip"
  appcast 'https://github.com/DaFuqtor/2FAtoTray/releases.atom'
  name '2FA to Tray'
  homepage 'https://github.com/DaFuqtor/2FAtoTray'

  app '2FA to Tray.app'

  uninstall login_item: '2FA to Tray'

  zap trash: '~/Library/Preferences/com.dafuqtor.2FAtoTray.plist'
end
