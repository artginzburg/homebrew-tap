cask 'functiontoggler' do
  version '1.1'
  sha256 '91cdfffa77f22cea3a3cc55bbf589b83f36ce40aa74d9b56fa4d80657b975406'

  url "https://github.com/artginzburg/FunctionToggler/releases/download/#{version}/FunctionToggler.zip"
  name 'Function Toggler'
  desc 'Quickly toggle the `fn` key behavior on macOS'
  homepage 'https://github.com/artginzburg/FunctionToggler'

  app 'Function Toggler.app'
  service 'Function Toggler.workflow'

  uninstall trash: '~/Library/Caches/org.artginzburg.FunctionToggler'
end
