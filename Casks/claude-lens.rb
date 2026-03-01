cask "claude-lens" do
  version "0.1.5"

  on_arm do
    sha256 "15f134a96f0fbc3c9ad81df4ee89076113f68a7498c1de0fa256cc0d0ed570e5"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.5/Claude.Lens-0.1.5-arm64.dmg",
        verified: "github.com/TheNightProject/claude-lens/"
  end

  on_intel do
    sha256 "ab5fc246305d9496605765475a7aa873f15570099e2bbadca1545e620d4f2d31"
    url "https://github.com/TheNightProject/claude-lens/releases/download/v0.1.5/Claude.Lens-0.1.5.dmg",
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
