class Baton < Formula
  desc "Monorepo AI code-review orchestrator"
  homepage "https://github.com/alexey1312/baton"
  version "0.1.3"
  license "MIT"

  depends_on "gh"

  # macOS asset is built native arm64 (no universal build yet); Intel macOS is
  # unsupported (no on_intel block under on_macos), so brew install fails there.
  on_macos do
    on_arm do
      url "https://github.com/alexey1312/baton/releases/download/v#{version}/baton-v#{version}-macos.tar.gz"
      sha256 "bb99276c9146aee88a42398da230a0cacb955d4e7a4512618fdee911f7a9a3b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexey1312/baton/releases/download/v#{version}/baton-v#{version}-linux-x86_64.tar.gz"
      sha256 "7497b5e7c69c1df7cca0e332fb7a14a2d910512a5c0a0a0085c2361608a4dc07"
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
