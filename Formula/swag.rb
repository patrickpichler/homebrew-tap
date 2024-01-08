class Swag < Formula
  desc "Automatically generate RESTful API docs with Swagger"
  homepage "https://github.com/swaggo/swag"
  url "https://github.com/swaggo/swag.git",
    tag:      "v2.0.0-rc3",
    revision: "c7b796dcb851ffca7e16b18bc91aa3696f6dadf5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/swag"
  end

  test do
    system "true"
  end
end
