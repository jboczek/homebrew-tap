class SkillsManager < Formula
  desc "Terminal-first skill exposure manager"
  homepage "https://github.com/jboczek/skills-manager"
  version "0.1.0"
  license "MIT"
  depends_on :macos

  on_arm do
    url "https://github.com/jboczek/skills-manager/releases/download/v0.1.0/skills-manager-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "9045e67f1254ef2d55db33e12c16f5c53366bda864b3ed2d69f582c002cc7512"
  end

  on_intel do
    url "https://github.com/jboczek/skills-manager/releases/download/v0.1.0/skills-manager-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "15f7c71c0345aa7803712aff6fd83869269ffbfb9371dee08e47c283f9cbc751"
  end

  def install
    bin.install "skills-manager"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skills-manager --version")
  end
end
