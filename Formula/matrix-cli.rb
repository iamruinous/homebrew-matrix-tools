class MatrixCli < Formula
  desc "Command-line tool for matrix.org communication service"
  homepage "https://github.com/iamruinous/matrix-cli"
  url "https://github.com/iamruinous/matrix-cli/archive/v0.0.3.tar.gz"
  sha256 "1513838a83b893036262118c9f856bad707492d168c32e22eb96d4c8a6c0abee"
  license "MIT"
  head "https://github.com/iamruinous/matrix-cli.git", branch: "main"

  bottle do
    root_url "https://ghcr.io/v2/iamruinous/matrix-tools"
    sha256 cellar: :any_skip_relocation, big_sur:      "50a868242487231b0789151ae80e26377832c7bd2cf6fe9bd65a6ce1dc1c2f8a"
    sha256 cellar: :any_skip_relocation, catalina:     "98d1f9fc2bfac60b2df2918819c732307a909af0c2e85a0bbad149910adbff43"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9ba27305f49680dda9c02de8ed7477c5f6f2039e0354bc26cda8a59ced28389c"
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
