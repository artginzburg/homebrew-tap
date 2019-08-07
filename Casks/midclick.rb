cask 'midclick' do
  version '1.1'
  sha256 '74533304ec68f8e6c716a4b7c3ad6ed34d985b88c66eee7e43cce22883dee08e'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/cl3m/MiddleClick/releases/download/mojave/MiddleClick_Mojave.zip"
  appcast 'https://github.com/cl3m/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://rouge41.com/labs/'

  app 'MiddleClick.app'

  uninstall login_item: 'MiddleClick',
            quit:       'com.rouge41.middleClick',
            trash:      '~/Library/Preferences/com.rouge41.middleClick.plist'
end