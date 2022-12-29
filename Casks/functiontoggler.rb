cask 'functiontoggler' do
  version '1.2.1'
  sha256 '342ed5baf3da3d6c76cd386656387e66d73a22334e0b3a9379615dfc22923db7'

  url "https://github.com/artginzburg/FunctionToggler/releases/download/#{version}/FunctionToggler.zip"
  name 'Function Toggler'
  desc 'Quickly toggle the `fn` key behavior on macOS'
  homepage 'https://github.com/artginzburg/FunctionToggler'

  app 'Function Toggler.app'
  service 'Function Toggler.workflow'

  uninstall trash: '~/Library/Caches/org.artginzburg.FunctionToggler'
end
