cask 'piposs' do
  version '1.0'
  sha256 '7030fbb6715d34f95cd8c59fd995ddcb6a256a39f7258f3c1ed5adf8c2dfe022'

  url "https://github.com/artginzburg/PiPOSS/releases/download/#{version}/PiPOSS.zip"
  name 'PiPOSS'
  desc 'Brings Picture in Picture shortcut and custom button to any video'
  homepage 'https://github.com/artginzburg/PiPOSS'

  app 'PiPOSS.app'

  uninstall trash: [
    '~/Library/Application Scripts/org.artginzburg.PiPOSS',
    '~/Library/Application Scripts/org.artginzburg.PiPOSS.Extension',
    '~/Library/Containers/org.artginzburg.PiPOSS',
    '~/Library/Containers/org.artginzburg.PiPOSS.Extension',
  ]
end
