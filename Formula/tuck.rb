class Tuck < Formula
  desc "Modern, beautiful dotfiles manager CLI"
  homepage "https://github.com/Pranav-Karra-3301/tuck"
  url "https://registry.npmjs.org/@prnv/tuck/-/tuck-1.7.0.tgz"
  sha256 "c087bad2666bc6f8d127bfdda9a02a9cc67afbdee532fcfbccc7af1fe45bd63d"
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
