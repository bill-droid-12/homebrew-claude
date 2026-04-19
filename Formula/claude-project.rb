class ClaudeProject < Formula
  include Language::Python::Virtualenv

  desc "Config-driven CLI for creating structured Claude projects and Obsidian-friendly vaults"
  homepage "https://github.com/bill-droid-12/claude-project-cli"
  url "https://github.com/bill-droid-12/claude-project-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/claude-project", "--help"
  end
end
