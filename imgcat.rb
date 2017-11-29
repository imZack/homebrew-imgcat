class Imgcat < Formula
  desc "iTerm2 is able to display images within the terminal. Using a similar mechanism, it can also facilitate file transfers over any transport (such as ssh or telnet), even in a non-8-bit-clean environment."
  homepage "https://www.iterm2.com/documentation-images.html"
  url "https://github.com/imZack/homebrew-imgcat/archive/2017.11.29.tar.gz"
  sha256 "f5e2900d3efe6b581196b84ef57dd86d8b367ae75eb5b9f940f3acaf36262e82"

  def install
    bin.install "imgcat"
  end

  test do
    test_fixtures("test.png")
    system "#{bin}/imgcat", "test.png"
  end
end
