class SkillsManager < Formula
  desc "Terminal-first skill exposure manager"
  homepage "https://github.com/jboczek/skills-manager"

  def self.configure_architecture
    on_arm do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.8/skills-manager-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "2ad53e455fb679b2f12929f7eafc3e233a108ecb87dd10ec1f3c428779d0e8e7"
    end

    on_intel do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.8/skills-manager-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "8a554ef7d5993b2a1def5dfa91400f14975633089963e764de6fc656c11c832a"
    end
  end

  configure_architecture
  version "0.1.8"
  stable.version Version.new("0.1.8", detected_from_url: true)
  license "MIT"
  depends_on :macos

  def install
    bin.install "skills-manager"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skills-manager --version")
  end
end
