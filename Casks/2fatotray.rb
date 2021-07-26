cask '2fatotray' do
  version '1.4.8.1'
  sha256 'cdce86a5774a34f75dc97dfa870fe5e673f232c4c9ec7ddc49a0b5619976150e'

  url "https://github.com/DaFuqtor/2FAtoTray/releases/download/#{version}/2FAtoTray.zip"
  appcast 'https://github.com/DaFuqtor/2FAtoTray/releases.atom'
  name '2FA to Tray'
  homepage 'https://github.com/DaFuqtor/2FAtoTray'

  app '2FA to Tray.app'

  uninstall login_item: '2FA to Tray'

  zap trash: '~/Library/Preferences/com.dafuqtor.2FAtoTray.plist'
  
  caveats do
    discontinued
  end
end
