class SkillsManager < Formula
  desc "Terminal-first skill exposure manager"
  homepage "https://github.com/jboczek/skills-manager"

  def self.configure_architecture
    on_arm do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.5/skills-manager-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "84442a414fa53fdb1d8af477656383564abddbb2bfffd8d3e9191b2d276abb0f"
    end

    on_intel do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.5/skills-manager-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "8fb23fa4373cac44b8e876f0df78cd4997a4ae810ecb69650e6cc4660758c63d"
    end
  end

  configure_architecture
  version "0.1.5"
  stable.version Version.new("0.1.5", detected_from_url: true)
  license "MIT"
  depends_on :macos

  def install
    bin.install "skills-manager"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skills-manager --version")
  end
end
