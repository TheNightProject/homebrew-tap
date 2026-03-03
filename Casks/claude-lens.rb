cask "claude-lens" do
  version "0.2.0"

  on_arm do
    sha256 "ba6d4bf865a8a35fe27e03f1fd3045092341378220a0afc6512244487d896b02"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.2.0/Claude.Lens-0.2.0-arm64.dmg",
        verified: "github.com/TheNightProject/claude-lens/"
  end

  on_intel do
    sha256 "51c06bb23cdd3554517c4b048925f9ae5d9244947f0fa3c71de1de8edca66b77"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.2.0/Claude.Lens-0.2.0.dmg",
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
