cask 'midclick' do
  version '2.4.1'
  sha256 '1e27d91d9414e43c4484d848540b0926b17d72429b7a636c7bad451d7f27e043'

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