class SudoTouchid < Formula
  desc "Automate adding TouchID as sufficient sudo auth method"
  homepage "https://github.com/artginzburg/sudo-touchid"
  url "https://github.com/artginzburg/sudo-touchid/archive/0.1.tar.gz"
  head "https://github.com/artginzburg/sudo-touchid.git"
  sha256 "bbcb0703118a9a19e35e3ec8d7174899324e28a64411c0818d0504d1c9c1e548"

  def install
    bin.install "sudo-touchid.sh" => "sudo-touchid"
  end

  plist_options :startup => true

  service do
    run [bin/"sudo-touchid"]
  end
end
