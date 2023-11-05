class License < Formula
  desc "Command-line license text generator"
  homepage "https://github.com/nishanths/license"
  url "https://github.com/nishanths/license/archive/refs/tags/v5.0.4.tar.gz"
  sha256 "66004bbc196405217161d378109517020f72fc3a71a532d13c25ff1b2c0055ae"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end
