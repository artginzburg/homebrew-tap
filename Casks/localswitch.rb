cask 'localswitch' do
  version '2.4.3'
  sha256 '6ad10c89e9ece54ff5ed81cc018c2454d93ddc949f7da8b249da41cbcc89ae10'

  url "https://github.com/DaFuqtor/LocalSwitch/releases/download/#{version}/LocalSwitch.zip"
  appcast 'https://github.com/DaFuqtor/LocalSwitch/releases.atom'
  name 'LocalSwitch'
  homepage 'https://git.io/localswitch'

  app 'LocalSwitch.app'

  uninstall login_item: 'LocalSwitch',
            quit:       'com.dafuqtor.LocalSwitch',
            trash:      '~/Library/Preferences/com.dafuqtor.LocalSwitch.plist'
  
  caveats do
    discontinued
  end
end
