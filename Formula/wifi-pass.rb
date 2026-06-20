class WifiPass < Formula
  desc "Copy, QR encode or just get the password of current Wi-Fi connection"
  homepage "https://github.com/artginzburg/wifi-pass"
  url "https://github.com/artginzburg/wifi-pass/archive/refs/tags/0.2.8.tar.gz"
  sha256 "93b8d8257abdfa67b687c0a39b83d43d334f9412f19dd4dae768e3b6422587f0"
  head "https://github.com/artginzburg/wifi-pass.git", branch: "master"

  depends_on "qrencode" => :recommended

  def install
    bin.install "wifi-pass.sh" => "wifi-pass"
  end
end
