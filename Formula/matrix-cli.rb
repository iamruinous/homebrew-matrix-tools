class MatrixCli < Formula
  desc "Command-line tool for matrix.org communication service"
  homepage "https://github.com/iamruinous/matrix-cli"
  url "https://github.com/iamruinous/matrix-cli/archive/v0.0.2.tar.gz"
  sha256 "8afa465acee3630a578d332352981d67c73f1be6b537b48a3aabb62f23aab6ae"
  license "MIT"
  head "https://github.com/iamruinous/matrix-cli.git", branch: "main"

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/matrix-cli", "--help"
  end
end
