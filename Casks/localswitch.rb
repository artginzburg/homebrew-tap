cask 'localswitch' do
  version '2.3.3'
  sha256 '5cadf138f3f26cc0e97b055e1899d674124f1bd6eb13ab4ddd8e51415bcd794f'

  url "https://github.com/DaFuqtor/LocalSwitch/releases/download/#{version}/LocalSwitch.zip"
  appcast 'https://github.com/DaFuqtor/LocalSwitch/releases.atom'
  name 'LocalSwitch'
  homepage 'https://git.io/localswitch'

  app 'LocalSwitch.app'

  uninstall login_item: 'LocalSwitch',
            quit:       'com.dafuqtor.LocalSwitch',
            trash:      '~/Library/Preferences/com.dafuqtor.LocalSwitch.plist'
end