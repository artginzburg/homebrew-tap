cask 'darkmode' do
  version '1.0'
  sha256 '8cceb0f17b45438d0209bc9a453e6869300a6272545f0db3419692629e371f9f'

  url "https://github.com/artginzburg/DarkMode/releases/download/#{version}/DarkMode.zip"
  name 'Dark Mode'
  desc 'Toggle the macOS dark mode from Spotlight Search'
  homepage 'https://github.com/artginzburg/DarkMode'

  app 'Dark Mode.app'
end
