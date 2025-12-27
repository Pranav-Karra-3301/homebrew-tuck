class Tuck < Formula
  desc "Modern, beautiful dotfiles manager CLI"
  homepage "https://github.com/Pranav-Karra-3301/tuck"
  url "https://registry.npmjs.org/@prnv/tuck/-/tuck-1.2.0.tgz"
  sha256 "ee65a68fa40092d86261ccd2e7ad9435d14f2aebc68ee5b65e40b029835b4232"
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
