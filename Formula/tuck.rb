# Homebrew Formula for tuck
#
# This formula is automatically updated by the tuck release workflow.
# Manual updates should not be necessary.
#
# To install:
#   brew tap pranav-karra-3301/tuck
#   brew install tuck

class Tuck < Formula
  desc "Modern, beautiful dotfiles manager CLI"
  homepage "https://github.com/Pranav-Karra-3301/tuck"
  url "https://registry.npmjs.org/tuck/-/tuck-0.1.0.tgz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuck --version")
  end

  def caveats
    <<~EOS
      tuck is a modern dotfiles manager. Get started with:

        tuck init      # Initialize tuck in your home directory
        tuck add       # Add files to track
        tuck status    # Check status of tracked files
        tuck sync      # Sync changes with your repository

      For more information, visit: https://github.com/Pranav-Karra-3301/tuck
    EOS
  end
end
