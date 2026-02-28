cask "claude-lens" do
  version "0.1.0"

  on_arm do
    sha256 "d0a305dda973f203adbb4f19ba0012769a12ee17695d5c5a3a787cfa392975be"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.0/Claude.Lens-0.1.0-arm64.dmg",
        verified: "github.com/TheNightProject/claude-lens/"
  end

  on_intel do
    sha256 "a0c29f657fc31e4a8f335c81ae318743f09d295b8479c4a2e840da0439261ec6"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.0/Claude.Lens-0.1.0.dmg",
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
