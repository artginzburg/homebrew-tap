class WifiPass < Formula
  desc "Copy, QR encode or just get the password of current Wi-Fi connection"
  homepage "https://github.com/artginzburg/wifi-pass"
  url "https://github.com/artginzburg/wifi-pass/archive/0.2.8.tar.gz"
  head "https://github.com/artginzburg/wifi-pass.git"

  depends_on "qrencode" => :recommended

  def install
    bin.install "wifi-pass.sh" => "wifi-pass"
  end
end
