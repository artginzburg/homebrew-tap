cask 'darkmode' do
  version '1.0'
  sha256 '8cceb0f17b45438d0209bc9a453e6869300a6272545f0db3419692629e371f9f'

  url "https://github.com/DaFuqtor/DarkMode/releases/download/#{version}/DarkMode.zip"
  appcast 'https://github.com/DaFuqtor/DarkMode/releases.atom'
  name 'Dark Mode'
  homepage 'https://github.com/DaFuqtor/DarkMode'

  app 'Dark Mode.app'
end