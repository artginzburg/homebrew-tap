cask 'functiontoggler' do
  version '1.0'
  sha256 'fc14965ae4b0c1ebbbc274d6d1d01e81834b08f4b3e5c85885d002ab70205a78'

  url "https://github.com/DaFuqtor/FunctionToggler/releases/download/#{version}/FunctionToggler.zip"
  appcast 'https://github.com/DaFuqtor/FunctionToggler/releases.atom'
  name 'Function Toggler'
  homepage 'https://github.com/DaFuqtor/FunctionToggler'

  auto_updates true

  app 'Function Toggler.app'
  service 'Function Toggler.workflow'

  uninstall trash: '~/Library/Caches/com.dafuqtor.FunctionToggler'
end