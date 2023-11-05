class License < Formula
  desc "Command-line license text generator"
  homepage "https://github.com/nishanths/license"
  url "https://github.com/nishanths/license/archive/refs/tags/v5.0.4.tar.gz"
  sha256 "66004bbc196405217161d378109517020f72fc3a71a532d13c25ff1b2c0055ae"
  license "MIT"

  bottle do
    root_url "https://github.com/patrickpichler/homebrew-tap/releases/download/license-5.0.4"
    rebuild 1
    sha256 cellar: :any_skip_relocation, ventura: "00a32f0447954e0784424a2ac2da238c854946dd74e22b35b6b07f4476eb7d69"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end
