class MatrixCli < Formula
  desc "Command-line tool for matrix.org communication service"
  homepage "https://github.com/iamruinous/matrix-cli"
  url "https://github.com/iamruinous/matrix-cli/archive/v0.0.4.tar.gz"
  sha256 "7d7db12e3015b4135daff91fedee7b02cd7d8c8e2ec0ea04e85f1e8fc4013ec4"
  license "MIT"
  head "https://github.com/iamruinous/matrix-cli.git", branch: "main"

  bottle do
    root_url "https://ghcr.io/v2/iamruinous/matrix-tools"
    sha256 cellar: :any_skip_relocation, big_sur:      "9e800f405f23f6147b68dcad691d08625155a5f7f599c6281c3c1e76c7b617b4"
    sha256 cellar: :any_skip_relocation, catalina:     "36f937ad0ede84e85abcaa36bc1dd57fdd9f5f5e09141136119b38bae063aa36"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a902b4b896de256e1d6f75ada3bb305e1770618fe1b45c02b45088728016165d"
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
