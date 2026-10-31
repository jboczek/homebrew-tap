class SkillsManager < Formula
  desc "Terminal-first skill exposure manager"
  homepage "https://github.com/jboczek/skills-manager"

  def self.configure_architecture
    on_arm do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.3/skills-manager-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "5f668befe0f742b9306e62f1cd9ee6df3db9d1d153d1c06caf022b3681921b5d"
    end

    on_intel do
      url "https://github.com/jboczek/skills-manager/releases/download/v0.1.3/skills-manager-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "59ff6078de2baa25ffea2a29ea0858a638f47860bbc26a598a3ebe5cec77635d"
    end
  end

  configure_architecture
  version "0.1.3"
  stable.version Version.new("0.1.3", detected_from_url: true)
  license "MIT"
  depends_on :macos

  def install
    bin.install "skills-manager"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skills-manager --version")
  end
end
