class PathFormatter < Formula
  desc "Small helper program to format a given path"
  homepage "https://github.com/patrickpichler/path-formatter"
  url "https://github.com/patrickpichler/path-formatter/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "067e0b86dddd47e6f2c3a113faa24108185fdf7aafed17629b81a991a7424dc6"
  license "MIT"
  head "https://github.com/patrickpichler/path-formatter.git", branch: "main"

  bottle do
    root_url "https://github.com/patrickpichler/homebrew-tap/releases/download/path-formatter-0.0.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, ventura: "fbf613f3eafe15760703da19ef62c626186d96ee63f9284e33805595d1de0b09"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end
