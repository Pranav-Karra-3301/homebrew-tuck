class Tuck < Formula
  desc "Modern, beautiful dotfiles manager CLI"
  homepage "https://github.com/Pranav-Karra-3301/tuck"
  url "https://registry.npmjs.org/@prnv/tuck/-/tuck-1.5.1.tgz"
  sha256 "a1ab312a64abf36248969965aab806f98dbeea2d579cd8c90900c94a1e617804"
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
