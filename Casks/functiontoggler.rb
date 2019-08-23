cask 'functiontoggler' do
  version '1.0'
  sha256 '8c0ebe62b1298d50a791b1bde6bfc6fe3be2bc0716f229f749c50503bca2ca5b'

  url "https://github.com/DaFuqtor/FunctionToggler/releases/download/#{version}/FunctionToggler.zip"
  appcast 'https://github.com/DaFuqtor/FunctionToggler/releases.atom'
  name 'Function Toggler'
  homepage 'https://github.com/DaFuqtor/FunctionToggler'

  app 'Function Toggler.app'
  service 'Function Toggler.workflow'

  uninstall trash: '~/Library/Caches/com.dafuqtor.FunctionToggler'
end