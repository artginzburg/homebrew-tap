class SudoTouchid < Formula
  desc "Permanent TouchID support for sudo"
  homepage "https://github.com/artginzburg/sudo-touchid"
  url "https://github.com/artginzburg/sudo-touchid/releases/download/0.3/sudo-touchid.sh"
  head "https://github.com/artginzburg/sudo-touchid.git"
  sha256 "a38e76bed012a90e7e85ee6a0f7bf35c884e7bc3f4158f7f6e176c2b8700a0d7"
  license "EPL-2.0"

  def install
    bin.install "sudo-touchid.sh" => "sudo-touchid"
  end

  plist_options :startup => true

  service do
    run [bin/"sudo-touchid"]
  end
end
