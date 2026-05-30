class Baton < Formula
  desc "Monorepo AI code-review orchestrator"
  homepage "https://github.com/alexey1312/baton"
  version "0.1.4"
  license "MIT"

  depends_on "gh"

  # macOS asset is built native arm64 (no universal build yet); Intel macOS is
  # unsupported (no on_intel block under on_macos), so brew install fails there.
  on_macos do
    on_arm do
      url "https://github.com/alexey1312/baton/releases/download/v#{version}/baton-v#{version}-macos.tar.gz"
      sha256 "05298b0952fe65c62fade2ee63d34e91cfec5b3e60a464e0d9f12d485e78f21b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexey1312/baton/releases/download/v#{version}/baton-v#{version}-linux-x86_64.tar.gz"
      sha256 "218997346f1debbe680179b77eb7be1adaa202f001f355fe973ec07c98488b17"
    end
  end

  def install
    bin.install "baton"
  end

  def caveats
    <<~EOS
      baton orchestrates external coding-agent CLIs (claude/codex/gemini/opencode) and
      publishes findings to GitHub via `gh`. Install at least one agent CLI and run `gh auth login`.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/baton --version")
  end
end
