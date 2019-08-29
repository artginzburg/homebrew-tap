cask 'localswitch' do
  version '2.3.1'
  sha256 '1c0eed54d8986e86a0c53f5739068a71e37fac8d97a36e263e05712190cd9e61'

  url "https://github.com/DaFuqtor/LocalSwitch/releases/download/#{version}/LocalSwitch.zip"
  appcast 'https://github.com/DaFuqtor/LocalSwitch/releases.atom'
  name 'LocalSwitch'
  homepage 'https://git.io/localswitch'

  app 'LocalSwitch.app'

  uninstall login_item: 'LocalSwitch',
            quit:       'com.dafuqtor.LocalSwitch',
            trash:      '~/Library/Preferences/com.dafuqtor.LocalSwitch.plist'
end