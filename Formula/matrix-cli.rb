class MatrixCli < Formula
  desc "Command-line tool for matrix.org communication service"
  homepage "https://github.com/iamruinous/matrix-cli"
  url "https://github.com/iamruinous/matrix-cli/archive/v0.0.2.tar.gz"
  sha256 "8afa465acee3630a578d332352981d67c73f1be6b537b48a3aabb62f23aab6ae"
  license "MIT"
  head "https://github.com/iamruinous/matrix-cli.git", branch: "main"

  bottle do
    root_url "https://ghcr.io/v2/iamruinous/matrix-tools"
    sha256 cellar: :any_skip_relocation, big_sur:      "598e74c3623d7072a2ec5934a04a8ecd83e4f60a302209713f8f8443f29d8a7e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6468e610fd92310aa0f52bbf8a9b6d163a05c143f901e7b7a6917406140cec8b"
  end

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/matrix-cli", "--help"
  end
end
