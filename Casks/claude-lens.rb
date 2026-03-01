cask "claude-lens" do
  version "0.1.4"

  on_arm do
    sha256 "2cda6e053e1ea70d2364196f04b6e80be6c472ca4ab68664e5e8e8fe4aedf9cd"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.4/Claude.Lens-0.1.4-arm64.dmg",
        verified: "github.com/TheNightProject/claude-lens/"
  end

  on_intel do
    sha256 "312d4b3057b4ef7a066027a2941777e0a2c1c5281334826229f97da48da70e68"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.4/Claude.Lens-0.1.4.dmg",
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
