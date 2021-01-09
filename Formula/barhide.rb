class Barhide < Formula
  desc "Hide unwanted icons from your menu bar"
  homepage "https://github.com/artginzburg/barhide"
  url "https://github.com/artginzburg/barhide/archive/0.1.tar.gz"
  head "https://github.com/artginzburg/barhide.git"

  def install
    bin.install "barhide.sh" => "barhide"
  end

  test do
    system "#{bin}/barhide", "-V"
  end
end
