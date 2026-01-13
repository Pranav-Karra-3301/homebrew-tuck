class Tuck < Formula
  desc "Modern, beautiful dotfiles manager CLI"
  homepage "https://github.com/Pranav-Karra-3301/tuck"
  url "https://registry.npmjs.org/@prnv/tuck/-/tuck-1.5.0.tgz"
  sha256 "61b0384f92e25fd2c9193dea9b192f6a4fc20abbfb6cab77ec0e266aa9f879c0"
  license "MIT"
  depends_on "node@20"
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/tuck --version")
  end
end
