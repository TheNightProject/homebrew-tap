cask "claude-lens" do
  version "0.1.3"

  on_arm do
    sha256 "94a7b8afba49a512b51fdc3d3bfd12007659e0b87fdc6057e5132f49c8a4af8e"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.3/Claude.Lens-0.1.3-arm64.dmg",
        verified: "github.com/TheNightProject/claude-lens/"
  end

  on_intel do
    sha256 "ead508d5b80a77a409775e7d57d4b75d04c735d3979f975b9ec04bece56129b8"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.3/Claude.Lens-0.1.3.dmg",
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
