cask "piposs" do
  version "2.0.0"
  sha256 "e8f2825f586285c00882b34717e51e1c0fa85fc79d082d361190ca549c5eae25"

  url "https://github.com/artginzburg/PiPOSS/releases/download/#{version}/PiPOSS.dmg"
  name "PiPOSS"
  desc "Picture in Picture for any Safari video, by hotkey or toolbar button"
  homepage "https://github.com/artginzburg/PiPOSS"

  depends_on macos: :big_sur

  app "PiPOSS.app"

  uninstall trash: [
    "~/Library/Application Scripts/org.artginzburg.PiPOSS",
    "~/Library/Application Scripts/org.artginzburg.PiPOSS.Extension",
    "~/Library/Containers/org.artginzburg.PiPOSS",
    "~/Library/Containers/org.artginzburg.PiPOSS.Extension",
  ]

  caveats <<~EOS
    The Safari extension needs Safari 15.4 or later, which Homebrew cannot check.
    On an older Safari the app still installs and opens, but if PiPOSS does not
    turn up in Safari > Settings > Extensions, check your Safari version before
    concluding the app is broken. Software Update offers Safari 15.4 or later on
    every macOS this cask installs on.
  EOS
end
