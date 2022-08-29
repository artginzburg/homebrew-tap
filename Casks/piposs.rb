cask 'piposs' do
  version '1.0.1'
  sha256 'e4f8759a4fa662f3aa4f18c39463e68c46e634456c8593cfa37e51b5a9c7d18b'

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
