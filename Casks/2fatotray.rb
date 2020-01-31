cask '2fatotray' do
  version '1.2.2'
  sha256 '51d1e028545562aec5bb925fa75a38ac60f7a031063a684d60b677c4bccb40f8'

  url "https://github.com/DaFuqtor/2FAtoTray/releases/download/#{version}/2FAtoTray.zip"
  appcast 'https://github.com/DaFuqtor/2FAtoTray/releases.atom'
  name '2FA to Tray'
  homepage 'https://github.com/DaFuqtor/2FAtoTray'

  app '2FA to Tray.app'

  uninstall login_item: '2FA to Tray'

  zap trash: '~/Library/Preferences/com.dafuqtor.2FAtoTray.plist'
end
