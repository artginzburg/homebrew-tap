cask "piposs" do
  version "1.0.3"
  sha256 "f940e6d512d80e9e2541268e22c4914f8d67ba0c9e0b83064b9cb3d7a7cab5d6"

  url "https://github.com/artginzburg/PiPOSS/releases/download/#{version}/PiPOSS.zip"
  name "PiPOSS"
  desc "Brings Picture in Picture shortcut and custom button to any video"
  homepage "https://github.com/artginzburg/PiPOSS"

  depends_on macos: :big_sur

  app "PiPOSS.app"

  uninstall trash: [
    "~/Library/Application Scripts/org.artginzburg.PiPOSS",
    "~/Library/Application Scripts/org.artginzburg.PiPOSS.Extension",
    "~/Library/Containers/org.artginzburg.PiPOSS",
    "~/Library/Containers/org.artginzburg.PiPOSS.Extension",
  ]
end
