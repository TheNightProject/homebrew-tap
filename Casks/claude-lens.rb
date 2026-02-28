cask "claude-lens" do
  version "0.1.2"

  on_arm do
    sha256 "58e0c86f9b6e2e42b0840a12fa0edcbe60560f76fcbf18d6d0b91ad34a03e2a7"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.2/Claude.Lens-0.1.2-arm64.dmg",
        verified: "github.com/TheNightProject/claude-lens/"
  end

  on_intel do
    sha256 "0eaa286b280df1463fa326ac6474a988ae0242e160705c024114d5c030fece28"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.2/Claude.Lens-0.1.2.dmg",
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
