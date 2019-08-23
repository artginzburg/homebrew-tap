cask 'midclick' do
  version '2.4.4'
  sha256 'fd763c1a04b25fff7cc37fa30cc1adc8acfe50dd2b108533faa99feac3dafe92'

  url "https://github.com/DaFuqtor/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  appcast 'https://github.com/DaFuqtor/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://github.com/DaFuqtor/MiddleClick'

  app 'MiddleClick.app'

  uninstall login_item: 'MiddleClick',
            quit:       'com.rouge41.middleClick'
            
  zap trash: '~/Library/Preferences/com.rouge41.middleClick.plist'
end