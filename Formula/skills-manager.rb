class SkillsManager < Formula
  desc "Terminal-first skill exposure manager"
  homepage "https://github.com/jboczek/skills-manager"

  def self.configure_architecture
    on_arm do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.1/skills-manager-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "cf3b5ffdfe42ad4c097422ec16da24f9a6879a670e35cb24285a9bdb1d5b9260"
    end

    on_intel do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.1/skills-manager-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "7e5f78c6da768776afe822543efc1744bf10caee30a2b68f450478e8bb4b71ca"
    end
  end

  configure_architecture
  version "0.1.1"
  stable.version Version.new("0.1.1", detected_from_url: true)
  license "MIT"
  depends_on :macos

  def install
    bin.install "skills-manager"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skills-manager --version")
  end
end
