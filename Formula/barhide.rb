class Barhide < Formula
  desc "Hide unwanted icons from your menu bar"
  homepage "https://github.com/artginzburg/barhide"
  url "https://github.com/artginzburg/barhide/releases/download/0.1/barhide.sh"
  head "https://github.com/artginzburg/barhide.git"
  sha256 "4087155ec21adfad4c8828310bff84537024f1854ddf7444d5eb7abec1d8ed2c"
  license "MIT"

  def install
    bin.install "barhide.sh" => "barhide"
  end

  test do
    system "#{bin}/barhide", "-V"
  end
end
