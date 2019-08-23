cask 'localswitch' do
  version '2.3'
  sha256 'aeaade91ea576707097a4406972ca39a895cd71fef9bec3ada48a1214ee64886'

  url "https://github.com/DaFuqtor/LocalSwitch/releases/download/#{version}/LocalSwitch.zip"
  appcast 'https://github.com/DaFuqtor/LocalSwitch/releases.atom'
  name 'LocalSwitch'
  homepage 'https://git.io/localswitch'

  app 'LocalSwitch.app'

  uninstall login_item: 'LocalSwitch',
            quit:       'com.dafuqtor.LocalSwitch',
            trash:      '~/Library/Preferences/com.dafuqtor.LocalSwitch.plist'
end