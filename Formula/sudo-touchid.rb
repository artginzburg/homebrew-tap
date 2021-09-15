class SudoTouchid < Formula
  desc "Permanent TouchID support for sudo"
  homepage "https://github.com/artginzburg/sudo-touchid"
  url "https://github.com/artginzburg/sudo-touchid/archive/0.2.tar.gz"
  head "https://github.com/artginzburg/sudo-touchid.git"
  sha256 "fa650ffdf3844c488778e9dc6243f63df84143996cd33b54cd3679a42fce7752"
  license "EPL-2.0"

  def install
    bin.install "sudo-touchid.sh" => "sudo-touchid"
  end

  plist_options :startup => true

  service do
    run [bin/"sudo-touchid"]
  end
end
