class SudoTouchid < Formula
  desc "Permanent TouchID support for sudo"
  homepage "https://github.com/artginzburg/sudo-touchid"
  url "https://github.com/artginzburg/sudo-touchid/releases/download/0.2/sudo-touchid.sh"
  head "https://github.com/artginzburg/sudo-touchid.git"
  sha256 "0d140c8d682ac32b7bc3f8df7b336a37b6d308cd0b12932e193129a31dd5c978"
  license "EPL-2.0"

  def install
    bin.install "sudo-touchid.sh" => "sudo-touchid"
  end

  plist_options :startup => true

  service do
    run [bin/"sudo-touchid"]
  end
end
