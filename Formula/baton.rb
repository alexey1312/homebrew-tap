class Baton < Formula
  desc "Monorepo AI code-review orchestrator"
  homepage "https://github.com/alexey1312/swift-baton"
  version "0.1.2"
  license "MIT"

  depends_on "gh"

  on_macos do
    # macOS asset is built native arm64 (no universal build yet); Intel is unsupported.
    url "https://github.com/alexey1312/swift-baton/releases/download/v#{version}/baton-v#{version}-macos.tar.gz"
    sha256 "7eb595865d482dd2ff506066c9a9bac7b4c696772e07ce2fa1699f3de6108e20"
    depends_on arch: :arm64
  end

  on_linux do
    url "https://github.com/alexey1312/swift-baton/releases/download/v#{version}/baton-v#{version}-linux-x86_64.tar.gz"
    sha256 "99ba50f5e9013e26bda3b9df7af6c2ff3f0862be5541260f69c0b3a98c3c3148"
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
