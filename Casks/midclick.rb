cask 'midclick' do
  version '1.2'
  sha256 '911f5780b5ccd2185e23e4a6921bcfd90ad5448f8843301a012a1ef0d678bb17'

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