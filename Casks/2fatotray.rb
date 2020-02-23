cask '2fatotray' do
  version '1.4.6'
  sha256 '491ed21045cb06939908a308b8c2cd2d7c7d713b8d4a56e2dca54ad88729bba2'

  url "https://github.com/DaFuqtor/2FAtoTray/releases/download/#{version}/2FAtoTray.zip"
  appcast 'https://github.com/DaFuqtor/2FAtoTray/releases.atom'
  name '2FA to Tray'
  homepage 'https://github.com/DaFuqtor/2FAtoTray'

  app '2FA to Tray.app'

  uninstall login_item: '2FA to Tray'

  zap trash: '~/Library/Preferences/com.dafuqtor.2FAtoTray.plist'
end
