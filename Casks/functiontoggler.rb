cask 'functiontoggler' do
  version '1.1'
  sha256 '788159752df9e781b5c119ab3d45713463bc3eb26da3c3ef1e64b2bb486875b4'

  url "https://github.com/artginzburg/FunctionToggler/releases/download/#{version}/FunctionToggler.zip"
  name 'Function Toggler'
  desc 'Quickly toggle the `fn` key behavior on macOS'
  homepage 'https://github.com/artginzburg/FunctionToggler'

  app 'Function Toggler.app'
  service 'Function Toggler.workflow'

  uninstall trash: '~/Library/Caches/org.artginzburg.FunctionToggler'
end
