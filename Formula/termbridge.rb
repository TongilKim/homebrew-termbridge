class Termbridge < Formula
  desc "Remote monitoring and control for Claude Code CLI"
  homepage "https://github.com/TongilKim/termbridge"
  url "https://registry.npmjs.org/@tongil_kim/termbridge/-/termbridge-0.1.6.tgz"
  sha256 "f96820f1899c17671350e1f8318d430eba663ca347403bae77d059b6056a1326"
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
