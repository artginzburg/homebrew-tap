cask 'midclick' do
  version '1.1'
  sha256 '56eee6b0dec04ed4b1789c510d97db486d53035581473ce1926e878ae481e02f'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/DaFuqtor/MiddleClick/releases/download/#{version}/MiddleClick.app.zip"
  appcast 'https://github.com/cl3m/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://github.com/cl3m/MiddleClick'

  app 'MiddleClick.app'

  uninstall login_item: 'MiddleClick',
            quit:       'com.rouge41.middleClick',
            trash:      '~/Library/Preferences/com.rouge41.middleClick.plist'
end