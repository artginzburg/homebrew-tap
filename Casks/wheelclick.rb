cask "wheelclick" do
  version "1.1.6"
  sha256 "104f940eea2ad68b7ad149fd44e4c3ddb3f01e811efb154f9263405f77ae90d2"

  # Byte-identical to WheelClick.dmg on the same release (same sha256); it is a
  # second copy under a second name purely so GitHub's per-asset download
  # counter separates brew installs from direct downloads. See
  # scripts/publish-direct.sh.
  url "https://github.com/artginzburg/WheelClick-Community/releases/download/v#{version}/WheelClick-homebrew.dmg"
  name "WheelClick"
  desc "Free three-finger middle click, with paid Magic Mouse and drag gestures"
  homepage "https://wheelclick.app/"

  # The app updates itself (Sparkle, direct channel only — see ADR 0005), which
  # Homebrew has to be told: without this, `brew upgrade` and the app would each
  # keep installing over the other, and Acceptable Casks asks for the stanza on
  # any cask whose app self-updates. The version above still matters — it is
  # what new installs get, and what `brew upgrade --greedy` compares against.
  # No blank line before depends_on: `brew style` groups the two stanzas
  # together and fails the tap's CI over the gap (Cask/StanzaGrouping).
  auto_updates true
  depends_on macos: :ventura

  app "WheelClick.app"

  zap trash: [
    "~/Library/Application Scripts/art.ginzburg.WheelClick",
    "~/Library/Containers/art.ginzburg.WheelClick",
  ]
end
