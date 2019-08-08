cask 'midclick' do
  version '2.3'
  sha256 '8f7d7ae93953b79a6dfc7fedeb0eca991afe77471b0bc332182a48432da4785a'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/DaFuqtor/MiddleClick/releases/download/#{version}/MiddleClick.app.zip"
  appcast 'https://github.com/DaFuqtor/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://github.com/DaFuqtor/MiddleClick'

  app 'MiddleClick.app'

  uninstall login_item: 'MiddleClick',
            quit:       'com.rouge41.middleClick',
            trash:      '~/Library/Preferences/com.rouge41.middleClick.plist'
end