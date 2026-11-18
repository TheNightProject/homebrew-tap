cask "underlings" do
  version "1.4.0"
  sha256 "4fbe56c64704e62869a199703f4a3e41d754b38deceba1bb7e39ed4a21fd7c88"

  url "https://github.com/TheNightProject/underlings/releases/download/v#{version}/Underlings-#{version}-arm64.zip",
      verified: "github.com/TheNightProject/underlings/"
  name "Underlings"
  desc "Merge requests, tickets and a team of Claude Code agents in a little 3D office"
  homepage "https://github.com/TheNightProject/underlings"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Underlings.app"

  # The app is not notarised by Apple yet, so macOS would refuse to open it while it is quarantined.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Underlings.app"]
  end

  uninstall quit: "com.thenightproject.underlings"

  zap trash: [
    "~/.config/underlings",
    "~/.local/state/underlings",
    "~/Library/Application Support/Underlings",
    "~/Library/Logs/Underlings",
  ]

  caveats <<~EOS
    Underlings runs every agent as Claude Code on your account, so install Claude Code and sign in:
      claude auth login
  EOS
end
