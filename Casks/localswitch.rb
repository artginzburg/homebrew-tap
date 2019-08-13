cask 'localswitch' do
  version '2.2.4'
  sha256 '2a87213e84713049347ede01a9229e2fe10420e1439527b91f7a19f9ca82d2f1'

  url "https://github.com/DaFuqtor/LocalSwitch/releases/download/#{version}/LocalSwitch.zip"
  appcast 'https://github.com/DaFuqtor/LocalSwitch/releases.atom'
  name 'LocalSwitch'
  homepage 'https://git.io/localswitch'

  app 'LocalSwitch.app'

  uninstall login_item: 'LocalSwitch',
            quit:       'com.dafuqtor.LocalSwitch',
            trash:      '~/Library/Preferences/com.dafuqtor.LocalSwitch.plist'
end