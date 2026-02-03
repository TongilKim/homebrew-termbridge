class Termbridge < Formula
  desc "Remote monitoring and control for Claude Code CLI"
  homepage "https://github.com/TongilKim/termbridge"
  url "https://registry.npmjs.org/@tongil_kim/termbridge/-/termbridge-0.1.9.tgz"
  sha256 "95106915bfbfc82b15841a2500a9a9663997d0cb66d9c04e002caf3cbf1fffa3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/termbridge", "--version"
  end
end
