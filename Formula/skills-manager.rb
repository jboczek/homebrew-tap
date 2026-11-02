class SkillsManager < Formula
  desc "Terminal-first skill exposure manager"
  homepage "https://github.com/jboczek/skills-manager"

  def self.configure_architecture
    on_arm do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.7/skills-manager-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "7b46a064501ca6893f351de10fe78ae09505f6496890e7c98570f8a0d93211c2"
    end

    on_intel do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.7/skills-manager-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "eeac31121f4c1def355670c008c03179bb29fb7bd72ad37defbdce6d5ff0d297"
    end
  end

  configure_architecture
  version "0.1.7"
  stable.version Version.new("0.1.7", detected_from_url: true)
  license "MIT"
  depends_on :macos

  def install
    bin.install "skills-manager"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skills-manager --version")
  end
end
