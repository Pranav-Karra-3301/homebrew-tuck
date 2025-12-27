class Tuck < Formula
  desc "Modern, beautiful dotfiles manager CLI"
  homepage "https://github.com/Pranav-Karra-3301/tuck"
  url "https://registry.npmjs.org/@prnv/tuck/-/tuck-1.2.1.tgz"
  sha256 "0f99134e13daedf3bc8126a4a00c7e671ddaccfc44b219481133e123b80582cf"
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
