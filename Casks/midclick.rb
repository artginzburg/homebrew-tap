cask 'midclick' do
  version '2.4.2'
  sha256 '5733d3c90399c743503fbfe24be09288ce76995173edcde5a4dff89193a6c4bd'

  url "https://github.com/DaFuqtor/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  appcast 'https://github.com/DaFuqtor/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://github.com/DaFuqtor/MiddleClick'

  app 'MiddleClick.app'

  uninstall login_item: 'MiddleClick',
            quit:       'com.rouge41.middleClick'
            
  zap trash: '~/Library/Preferences/com.rouge41.middleClick.plist'
end