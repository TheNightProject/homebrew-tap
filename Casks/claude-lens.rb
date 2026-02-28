cask "claude-lens" do
  version "0.1.1"

  on_arm do
    sha256 "8e31914247a1808193d9c8739b39233241a8d28e4ab6c9572b474fc673532db2"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.1/Claude.Lens-0.1.1-arm64.dmg",
        verified: "github.com/TheNightProject/claude-lens/"
  end

  on_intel do
    sha256 "41f8fc3779e0afaa21d1d19cfb8e61ff72eaeea11a1fd6c3a7e1c443b034fe02"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.1/Claude.Lens-0.1.1.dmg",
        verified: "github.com/TheNightProject/claude-lens/"
  end

  name "Claude Lens"
  desc "Local observability dashboard for Claude & AI developer tooling"
  homepage "https://github.com/TheNightProject/claude-lens"

  app "Claude Lens.app"

  zap trash: [
    "~/Library/Application Support/Claude Lens",
    "~/Library/Preferences/com.thenightproject.claude-lens.plist",
  ]
end
