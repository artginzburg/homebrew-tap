cask "piposs" do
  version "1.0.2"
  sha256 "07900825ee86e97a7a3a445207a41c4527c0aebfff413f584477713da9ddf922"

  url "https://github.com/artginzburg/PiPOSS/releases/download/#{version}/PiPOSS.zip"
  name "PiPOSS"
  desc "Brings Picture in Picture shortcut and custom button to any video"
  homepage "https://github.com/artginzburg/PiPOSS"

  depends_on macos: ">= :big_sur"

  app "PiPOSS.app"

  uninstall trash: [
    "~/Library/Application Scripts/org.artginzburg.PiPOSS",
    "~/Library/Application Scripts/org.artginzburg.PiPOSS.Extension",
    "~/Library/Containers/org.artginzburg.PiPOSS",
    "~/Library/Containers/org.artginzburg.PiPOSS.Extension",
  ]
end
