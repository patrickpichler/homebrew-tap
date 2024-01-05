class Wgo < Formula
  desc "Perform live reloads for Go apps"
  homepage "https://github.com/bokwoon95/wgo"
  url "https://github.com/bokwoon95/wgo/archive/refs/tags/v0.5.6.tar.gz"
  sha256 "61968b60564b9876f500e1d76669fbdb2036ec97d7379169b2e33bb0a406ac96"
  license "MIT"
  head "https://github.com/bokwoon95/wgo.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end
