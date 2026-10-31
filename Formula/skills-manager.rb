class SkillsManager < Formula
  desc "Terminal-first skill exposure manager"
  homepage "https://github.com/jboczek/skills-manager"

  def self.configure_architecture
    on_arm do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.6/skills-manager-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "c746d386a3fa28c254de3a53c3ab16c68a904a03b343a36e24c48474b89588d8"
    end

    on_intel do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.6/skills-manager-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "9e4c3b6487186e2cf2dfe19268ef6ac0eec632b30d78d9a8d433f3ae659168e0"
    end
  end

  configure_architecture
  version "0.1.6"
  stable.version Version.new("0.1.6", detected_from_url: true)
  license "MIT"
  depends_on :macos

  def install
    bin.install "skills-manager"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skills-manager --version")
  end
end
