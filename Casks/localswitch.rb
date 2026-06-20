cask "localswitch" do
  version "2.4.3"
  sha256 "6ad10c89e9ece54ff5ed81cc018c2454d93ddc949f7da8b249da41cbcc89ae10"

  url "https://github.com/DaFuqtor/LocalSwitch/releases/download/#{version}/LocalSwitch.zip",
      verified: "github.com/DaFuqtor/LocalSwitch/"
  name "LocalSwitch"
  desc "Menu bar interface for a local Apache httpd server"
  homepage "https://git.io/localswitch"

  deprecate! date: "2021-07-27", because: :discontinued

  depends_on :macos

  app "LocalSwitch.app"

  uninstall quit:       "com.dafuqtor.LocalSwitch",
            login_item: "LocalSwitch",
            trash:      "~/Library/Preferences/com.dafuqtor.LocalSwitch.plist"

  caveats do
    requires_rosetta
  end
end
