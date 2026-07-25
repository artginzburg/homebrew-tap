cask "wheelclick" do
  version "1.0.2"
  sha256 "4d61f6085a6dfd3c37ee7ad700aa1ca9353e312607baff34eacdda5bcc79c3e7"

  url "https://github.com/artginzburg/WheelClick-Community/releases/download/v#{version}/WheelClick.dmg",
      verified: "github.com/artginzburg/WheelClick-Community/"
  name "WheelClick"
  desc "Free three-finger middle click, with paid Magic Mouse and drag gestures"
  homepage "https://wheelclick.app/"

  depends_on macos: :ventura

  app "WheelClick.app"

  zap trash: [
    "~/Library/Application Scripts/art.ginzburg.WheelClick",
    "~/Library/Containers/art.ginzburg.WheelClick",
  ]
end
