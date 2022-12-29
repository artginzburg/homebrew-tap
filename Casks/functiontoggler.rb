cask 'functiontoggler' do
  version '1.2'
  sha256 'ef2b7d8f2e281f22229de21827fa8513e0c22a845e7c3e3cedad09e78cfa7b9a'

  url "https://github.com/artginzburg/FunctionToggler/releases/download/#{version}/FunctionToggler.zip"
  name 'Function Toggler'
  desc 'Quickly toggle the `fn` key behavior on macOS'
  homepage 'https://github.com/artginzburg/FunctionToggler'

  app 'Function Toggler.app'
  service 'Function Toggler.workflow'

  uninstall trash: '~/Library/Caches/org.artginzburg.FunctionToggler'
end
