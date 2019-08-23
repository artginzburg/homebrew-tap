cask 'midclick' do
  version '2.4.3'
  sha256 '9bb3c68508c81cba7055b9fb209a8e630c11a8036b6271c7eb1dfea5ac96755b'

  url "https://github.com/DaFuqtor/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  appcast 'https://github.com/DaFuqtor/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://github.com/DaFuqtor/MiddleClick'

  app 'MiddleClick.app'

  uninstall login_item: 'MiddleClick',
            quit:       'com.rouge41.middleClick'
            
  zap trash: '~/Library/Preferences/com.rouge41.middleClick.plist'
end