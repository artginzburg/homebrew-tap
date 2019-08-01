class WifiPass < Formula
  desc "Copy, QR encode or just get the password of current Wi-Fi connection"
  homepage "https://wifi-pass.ru"
  url "https://api.github.com/repos/DaFuqtor/wifi-pass/tarball"
  version ":latest"

  depends_on "qrencode" => :recommended

  def install
    bin.install "wifi-pass.sh" => "wifi-pass"
  end

  test do
    system "#{bin}/wifi-pass", "-V"
  end
end
