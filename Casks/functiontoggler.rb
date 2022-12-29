cask 'functiontoggler' do
  version '1.2.2'
  sha256 '887cd684ecc22b5e6cee26b0ffce052dc678c65cc251669d4c8df676bb7b7751'

  url "https://github.com/artginzburg/FunctionToggler/releases/download/#{version}/FunctionToggler.zip"
  name 'Function Toggler'
  desc 'Quickly toggle the `fn` key behavior on macOS'
  homepage 'https://github.com/artginzburg/FunctionToggler'

  app 'Function Toggler.app'
  service 'Function Toggler.workflow'

  uninstall trash: '~/Library/Caches/org.artginzburg.FunctionToggler'
end
