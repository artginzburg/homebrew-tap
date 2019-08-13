cask 'darkmode' do
  version '1.0'
  sha256 'a25ba1444c122a2044f8617b80132a1602435e733fc71534d2fa2ab255ba1f49'

  url "https://github.com/DaFuqtor/DarkMode/releases/download/#{version}/DarkMode.zip"
  appcast 'https://github.com/DaFuqtor/DarkMode/releases.atom'
  name 'Dark Mode'
  homepage 'https://github.com/DaFuqtor/DarkMode'

  app 'Dark Mode.app'
end