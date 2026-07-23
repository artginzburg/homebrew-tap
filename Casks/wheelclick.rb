cask "wheelclick" do
  version "1.0.0"
  sha256 "b702aa58b85c3b5b405f4a7e9c407339b3d436e9fbf9f35a6dd7ac88b8220186"

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
