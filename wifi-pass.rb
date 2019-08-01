class WifiPass < Formula
  desc "Copy, QR encode or just get the password of current Wi-Fi connection"
  homepage "http://wifi-pass.ru"
  url "https://github.com/DaFuqtor/wifi-pass/archive/0.2.6.tar.gz"
  sha256 "907e4e1d02304ab7c1da92aef5b91ae5542cec6da97d3f88e5afd7b977e1fd62"

  depends_on "qrencode" => :recommended

  def install
    bin.install "wifi-pass.sh" => "wifi-pass"
  end

  test do
    system "#{bin}/wifi-pass", "-V"
  end
end
