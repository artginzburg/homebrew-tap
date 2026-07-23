cask "wheelclick" do
  version "1.0.1"
  sha256 "14aa76468f567f0917cd48c3acf09da426a962abcd215bdeee29580268e4c9bc"

  url "https://github.com/artginzburg/WheelClick-Community/releases/download/v#{version}/WheelClick.dmg",
      verified: "github.com/artginzburg/WheelClick-Community/"
  name "WheelClick"
  desc "Middle click for the trackpad and Magic Mouse — successor to MiddleClick"
  homepage "https://wheelclick.app/"

  depends_on macos: :tahoe

  app "WheelClick.app"

  zap trash: [
    "~/Library/Application Scripts/art.ginzburg.WheelClick",
    "~/Library/Containers/art.ginzburg.WheelClick",
  ]
end
